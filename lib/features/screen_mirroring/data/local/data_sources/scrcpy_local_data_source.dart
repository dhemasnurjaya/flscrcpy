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
    final device = DeviceMirroringModel(serial: args.serial, logs: []);
    final shell = await execCommand.stream('scrcpy', args.list);
    shell.stream.listen((output) {
      device.logs.add(output);
      mirroringCache.add(key: args.serial, value: device);
    });
  }
}
