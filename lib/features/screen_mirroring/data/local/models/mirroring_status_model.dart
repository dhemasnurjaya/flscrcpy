import 'package:flscrcpy/core/process/stream_shell.dart';

class MirroringStatusModel {
  final StreamShell shell;
  final String serial;
  final List<String> logs;

  MirroringStatusModel({
    required this.shell,
    required this.serial,
    required this.logs,
  });
}
