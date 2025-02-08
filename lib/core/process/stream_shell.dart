import 'dart:io';

import 'package:process_run/process_run.dart';

enum StreamShellStatus { stopped, running, error }

/// A shell that can be used to run commands and listen to the output.
abstract class StreamShell {
  /// The controller that can be used to listen to the output.
  ShellLinesController get controller;

  /// Whether the shell is running.
  StreamShellStatus get status;

  /// Run the given command with the given arguments.
  Future<void> run(String command, List<String> arguments);

  /// Kill the shell.
  void kill();
}

class StreamShellImpl extends StreamShell {
  StreamShellStatus _status = StreamShellStatus.stopped;

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
  StreamShellStatus get status => _status;

  @override
  Future<void> run(String command, List<String> arguments) async {
    try {
      _status = StreamShellStatus.running;
      await _shell.runExecutableArguments(command, arguments);
    } on Exception catch (e) {
      final isKilledOnPurpose =
          e is ShellException && e.message == 'Killed by framework';
      if (!isKilledOnPurpose) {
        throw Exception('Failed while executing: $e');
      }
      _status = StreamShellStatus.error;
    } finally {
      _status = StreamShellStatus.stopped;
    }
  }

  @override
  void kill() {
    _shell.kill(ProcessSignal.sigint);
  }
}
