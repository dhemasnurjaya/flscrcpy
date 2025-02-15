import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class SetScrcpyArgs extends UseCase<void, SetScrcpyArgsParams> {
  final ScreenMirroringRepository repository;

  SetScrcpyArgs(this.repository);

  @override
  Future<Either<Failure, void>> call(SetScrcpyArgsParams params) {
    return repository.setScrcpyArgs(params.scrcpyArgs);
  }
}

class SetScrcpyArgsParams extends Equatable {
  final ScrcpyArgs scrcpyArgs;

  const SetScrcpyArgsParams(this.scrcpyArgs);

  @override
  List<Object?> get props => [scrcpyArgs];
}
