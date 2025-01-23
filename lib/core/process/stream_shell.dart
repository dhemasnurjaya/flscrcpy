import 'package:process_run/process_run.dart';

class StreamShell {
  late ShellLinesController _controller;
  late Shell _shell;

  StreamShell() {
    _controller = ShellLinesController();
    _shell = Shell(stdout: _controller.sink);
  }

  Stream<String> get stream => _controller.stream;

  Future<void> run(String command, List<String> arguments) async {
    try {
      await _shell.runExecutableArguments(command, arguments);
    } catch (e) {
      _controller.close();
      throw Exception('Failed while executing: $e');
    } finally {
      _controller.close();
    }
  }

  void close() {
    _controller.close();
  }
}
