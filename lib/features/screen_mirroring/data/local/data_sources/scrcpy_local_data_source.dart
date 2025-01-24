import 'dart:async';

import 'package:flscrcpy/core/data/local/cache.dart';
import 'package:flscrcpy/core/process/exec_command.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/device_mirroring_model.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_info_model.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_run_args_model.dart';

abstract class ScrcpyLocalDataSource {
  /// Get information about the scrcpy binary.
  Future<ScrcpyInfoModel> getScrcpyInfo();

  /// Start scrcpy with the given arguments.
  Future<void> startScrcpy(ScrcpyRunArgsModel args);

  /// Stop scrcpy with the given serial.
  Future<void> stopScrcpy(String serial);
}

class ScrcpyLocalDataSourceImpl implements ScrcpyLocalDataSource {
  final ExecCommand execCommand;
  final Cache<String, DeviceMirroringModel> mirroringCache;

  ScrcpyLocalDataSourceImpl({
    required this.execCommand,
    required this.mirroringCache,
  });

  @override
  Future<ScrcpyInfoModel> getScrcpyInfo() async {
    final output = await execCommand.oneShot('scrcpy', ['--version']);
    return ScrcpyInfoModel.fromOutput(output);
  }

  @override
  Future<void> startScrcpy(ScrcpyRunArgsModel args) async {
    final shell = await execCommand.stream('scrcpy', args.list);
    final device = DeviceMirroringModel(
      shell: shell,
      serial: args.serial,
      logs: [],
    );
    shell.controller.stream.listen(
      (output) {
        device.logs.add(output);
        mirroringCache.add(args.serial, device);
      },
      onDone: () {
        shell.controller.close();
      },
      onError: (e) {
        shell.controller.close();
      },
    );
  }

  @override
  Future<void> stopScrcpy(String serial) async {
    final device = await mirroringCache.read(serial);
    if (device != null) {
      device.shell.kill();
      await mirroringCache.remove(serial);
    }
    return Future.value();
  }
}
