import 'dart:async';

import 'package:flscrcpy/core/data/local/cache.dart';
import 'package:flscrcpy/core/process/exec_command.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/mirroring_status_model.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_info_model.dart';

abstract class ScrcpyLocalDataSource {
  /// Get information about the scrcpy binary.
  Future<ScrcpyInfoModel> getScrcpyInfo();

  /// Start scrcpy with the given serial and arguments.
  Future<void> startScrcpy(String serial, List<String> args);

  /// Stop scrcpy with the given serial.
  Future<void> stopScrcpy(String serial);

  /// Get the device mirroring state with the given serial.
  Future<MirroringStatusModel?> getDeviceStatus(String serial);
}

class ScrcpyLocalDataSourceImpl implements ScrcpyLocalDataSource {
  final ExecCommand execCommand;
  final Cache<String, MirroringStatusModel> mirroringStatusCache;

  ScrcpyLocalDataSourceImpl({
    required this.execCommand,
    required this.mirroringStatusCache,
  });

  @override
  Future<ScrcpyInfoModel> getScrcpyInfo() async {
    final output = await execCommand.oneShot('scrcpy', ['--version']);
    return ScrcpyInfoModel.fromOutput(output);
  }

  @override
  Future<void> startScrcpy(String serial, List<String> args) async {
    final shell = await execCommand.stream('scrcpy', args);
    final state = MirroringStatusModel(
      shell: shell,
      serial: serial,
      logs: [],
    );
    shell.controller.stream.listen(
      (output) {
        state.logs.add(output);
        mirroringStatusCache.add(serial, state);
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
    final state = await mirroringStatusCache.read(serial);
    if (state != null) {
      state.shell.kill();
      await mirroringStatusCache.remove(serial);
    }
    return Future.value();
  }

  @override
  Future<MirroringStatusModel?> getDeviceStatus(String serial) {
    return mirroringStatusCache.read(serial);
  }
}
