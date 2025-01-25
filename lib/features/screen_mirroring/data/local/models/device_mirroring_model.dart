// TODO: make use this model to track the device mirroring state

import 'package:flscrcpy/core/process/stream_shell.dart';

class DeviceMirroringModel {
  final StreamShell shell;
  final String serial;
  final List<String> logs;

  DeviceMirroringModel({
    required this.shell,
    required this.serial,
    required this.logs,
  });
}
