import 'dart:async';

import 'package:flscrcpy/core/process/stream_shell.dart';
import 'package:process_run/process_run.dart';

abstract class ExecCommand {
  /// Execute a command and return the output as a string.
  Future<String> oneShot(String command, List<String> arguments);

  /// Execute a command and return the output as a stream of lines.
  Future<StreamShell> stream(String command, List<String> arguments);
}

class ExecCommandImpl implements ExecCommand {
  @override
  Future<String> oneShot(String command, List<String> arguments) async {
    try {
      final result = await runExecutableArguments(command, arguments);
      return result.outText;
    } catch (e) {
      throw Exception('Failed to execute command: $e');
    }
  }

  @override
  Future<StreamShell> stream(String command, List<String> arguments) async {
    final shell = StreamShellImpl();
    unawaited(shell.run(command, arguments));
    return shell;
  }
}
