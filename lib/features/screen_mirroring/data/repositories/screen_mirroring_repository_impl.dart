import 'package:flscrcpy/core/data/local/config.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/configs/scrcpy_config.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/adb_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/scrcpy_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class ScreenMirroringRepositoryImpl implements ScreenMirroringRepository {
  final ScrcpyLocalDataSource scrcpyLocalDataSource;
  final AdbLocalDataSource adbLocalDataSource;
  final Config<ScrcpyParams> scrcpyParamsConfig;

  ScreenMirroringRepositoryImpl({
    required this.scrcpyLocalDataSource,
    required this.adbLocalDataSource,
    required this.scrcpyParamsConfig,
  });

  @override
  Future<Either<Failure, ScrcpyInfo>> getScrcpyInfo() async {
    try {
      final scrcpyInfo = await scrcpyLocalDataSource.getScrcpyInfo();
      return right(ScrcpyInfo.fromModel(scrcpyInfo));
    } on Exception catch (e) {
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
    } on Exception catch (e) {
      return left(ExecutionFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> startMirroring(String serial) async {
    try {
      final config = await scrcpyParamsConfig.get();
      final args = config.params
          .map<String>((e) => "${e.paramName} ${e.paramValue}")
          .toList();
      await scrcpyLocalDataSource.startScrcpy(serial, args);
      return right(null);
    } on Exception catch (e) {
      return left(ExecutionFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> stopMirroring(String serial) async {
    try {
      await scrcpyLocalDataSource.stopScrcpy(serial);
      return right(null);
    } on Exception catch (e) {
      return left(ExecutionFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, MirroringStatus>> getMirroringStatus(
      String serial) async {
    try {
      final state = await scrcpyLocalDataSource.getDeviceStatus(serial);
      if (state == null) {
        return left(ExecutionFailure(message: 'Device state not found'));
      }
      return right(MirroringStatus.fromModel(state));
    } on Exception catch (e) {
      return left(ExecutionFailure(message: e.toString()));
    }
  }
}
