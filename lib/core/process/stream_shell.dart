import 'dart:developer';
import 'dart:io';

import 'package:process_run/process_run.dart';

/// A shell that can be used to run commands and listen to the output.
abstract class StreamShell {
  /// The controller that can be used to listen to the output.
  ShellLinesController get controller;

  /// Whether the shell is running.
  bool get isRunning;

  /// Run the given command with the given arguments.
  Future<void> run(String command, List<String> arguments);

  /// Kill the shell.
  void kill();
}

class StreamShellImpl extends StreamShell {
  bool _isRunning = false;

  late Shell _shell;
  late ShellLinesController _controller;

  StreamShellImpl({Shell? shell}) {
    _controller = ShellLinesController();
    final shellOptions = ShellOptions(
      stdout: _controller.sink,
      stderr: _controller.sink,
    );
    _shell = shell ?? Shell(options: shellOptions);
  }

  @override
  ShellLinesController get controller => _controller;

  @override
  bool get isRunning => _isRunning;

  @override
  Future<void> run(String command, List<String> arguments) async {
    try {
      _isRunning = true;
      await _shell.runExecutableArguments(command, arguments);
    } on Exception catch (e) {
      final isKilledOnPurpose =
          e is ShellException && e.message == 'Killed by framework';
      if (!isKilledOnPurpose) {
        throw Exception('Failed while executing: $e');
      }
    } finally {
      _isRunning = false;
      log('Shell is closed');
    }
  }

  @override
  void kill() {
    _shell.kill(ProcessSignal.sigint);
  }
}
