import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/adb_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/scrcpy_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_run_args_model.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class ScreenMirroringRepositoryImpl implements ScreenMirroringRepository {
  final ScrcpyLocalDataSource scrcpyLocalDataSource;
  final AdbLocalDataSource adbLocalDataSource;

  ScreenMirroringRepositoryImpl({
    required this.scrcpyLocalDataSource,
    required this.adbLocalDataSource,
  });

  @override
  Future<Either<Failure, ScrcpyInfo>> getScrcpyInfo() async {
    try {
      final scrcpyInfo = await scrcpyLocalDataSource.getScrcpyInfo();
      return right(ScrcpyInfo.fromModel(scrcpyInfo));
    } catch (e) {
      return left(ExecutionFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DeviceInfo>>> listDevices() async {
    try {
      final serials = await adbLocalDataSource.listSerials();
      final getDevices = serials.map((serial) async {
        final deviceInfo = await adbLocalDataSource.getDeviceInfo(serial);
        return DeviceInfo.fromModel(serial, deviceInfo);
      });
      final devices = await Future.wait(getDevices);
      return right(devices.toList());
    } catch (e) {
      return left(ExecutionFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> startMirroring(String serial) async {
    try {
      // TODO: make args configurable
      final args = ScrcpyRunArgsModel(serial: serial, videoBitrate: 4000000);
      await scrcpyLocalDataSource.startScrcpy(args);
      return right(null);
    } catch (e) {
      return left(ExecutionFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> stopMirroring(String serial) async {
    try {
      await scrcpyLocalDataSource.stopScrcpy(serial);
      return right(null);
    } catch (e) {
      return left(ExecutionFailure(message: e.toString()));
    }
  }
}
