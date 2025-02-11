import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_info.dart';
import 'package:fpdart/fpdart.dart';

abstract class ScreenMirroringRepository {
  /// Get scrcpy information.
  Future<Either<Failure, ScrcpyInfo>> getScrcpyInfo();

  /// Get a list of connected devices.
  Future<Either<Failure, List<DeviceInfo>>> listDevices();

  /// Connect to a device and start screen mirroring.
  Future<Either<Failure, void>> startMirroring(String serial);

  /// Stop screen mirroring.
  Future<Either<Failure, void>> stopMirroring(String serial);

  /// Get the device mirroring status with the given serial.
  Future<Either<Failure, MirroringStatus>> getMirroringStatus(String serial);

  /// Get scrcpy parameters configuration.
  Future<Either<Failure, ScrcpyArgs>> getScrcpyArgs();

  /// Set scrcpy parameters configuration.
  Future<Either<Failure, void>> setScrcpyArgs(ScrcpyArgs args);
}
