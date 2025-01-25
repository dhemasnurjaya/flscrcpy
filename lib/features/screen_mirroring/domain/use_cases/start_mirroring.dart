import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class StartMirroring extends UseCase<void, StartMirroringParams> {
  final ScreenMirroringRepository repository;

  StartMirroring(this.repository);

  @override
  Future<Either<Failure, void>> call(StartMirroringParams params) {
    return repository.startMirroring(params.deviceInfo.adbSerial);
  }
}

class StartMirroringParams extends Equatable {
  final DeviceInfo deviceInfo;

  const StartMirroringParams(this.deviceInfo);

  @override
  List<Object> get props => [deviceInfo];
}
