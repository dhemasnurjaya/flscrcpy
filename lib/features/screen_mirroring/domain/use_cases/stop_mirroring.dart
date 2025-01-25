import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class StopMirroring extends UseCase<void, StopMirroringParams> {
  final ScreenMirroringRepository repository;

  StopMirroring(this.repository);

  @override
  Future<Either<Failure, void>> call(StopMirroringParams params) {
    return repository.stopMirroring(params.deviceInfo.adbSerial);
  }
}

class StopMirroringParams extends Equatable {
  final DeviceInfo deviceInfo;

  const StopMirroringParams(this.deviceInfo);

  @override
  List<Object> get props => [deviceInfo];
}
