import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetMirroringLogs extends UseCase<void, GetMirroringLogsParams> {
  final ScreenMirroringRepository repository;

  GetMirroringLogs(this.repository);

  @override
  Future<Either<Failure, void>> call(GetMirroringLogsParams params) {
    throw UnimplementedError();
  }
}

class GetMirroringLogsParams extends Equatable {
  final DeviceInfo deviceInfo;

  const GetMirroringLogsParams(this.deviceInfo);

  @override
  List<Object> get props => [deviceInfo];
}
