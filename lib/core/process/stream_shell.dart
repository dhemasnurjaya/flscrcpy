import 'dart:io';

import 'package:process_run/process_run.dart';

class StreamShell {
  late ShellLinesController _controller;
  late Shell _shell;

  StreamShell() {
    _controller = ShellLinesController();
    _shell = Shell(stdout: _controller.sink);
  }

  ShellLinesController get controller => _controller;

  Future<void> run(String command, List<String> arguments) async {
    try {
      await _shell.runExecutableArguments(command, arguments);
    } on Exception catch (e) {
      final isKilledOnPurpose =
          e is ShellException && e.message == 'Killed by framework';
      if (!isKilledOnPurpose) {
        throw Exception('Failed while executing: $e');
      }
    }
  }

  void kill() {
    _shell.kill(ProcessSignal.sigint);
  }
}
