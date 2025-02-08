import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetMirroringStatus
    extends UseCase<MirroringStatus, GetMirroringStatusParams> {
  final ScreenMirroringRepository repository;

  GetMirroringStatus(this.repository);

  @override
  Future<Either<Failure, MirroringStatus>> call(
      GetMirroringStatusParams params) {
    return repository.getMirroringStatus(params.serial);
  }
}

class GetMirroringStatusParams extends Equatable {
  final String serial;

  const GetMirroringStatusParams({
    required this.serial,
  });

  @override
  List<Object?> get props => [serial];
}
