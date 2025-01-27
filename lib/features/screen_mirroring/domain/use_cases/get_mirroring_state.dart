import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetMirroringState
    extends UseCase<MirroringStatus, GetMirroringStateParams> {
  final ScreenMirroringRepository repository;

  GetMirroringState(this.repository);

  @override
  Future<Either<Failure, MirroringStatus>> call(
      GetMirroringStateParams params) {
    return repository.getDeviceState(params.serial);
  }
}

class GetMirroringStateParams extends Equatable {
  final String serial;

  const GetMirroringStateParams({
    required this.serial,
  });

  @override
  List<Object?> get props => [serial];
}
