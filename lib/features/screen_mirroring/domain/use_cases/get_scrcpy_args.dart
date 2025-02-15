import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetScrcpyArgs extends UseCase<ScrcpyArgs, NoParams> {
  final ScreenMirroringRepository repository;

  GetScrcpyArgs(this.repository);

  @override
  Future<Either<Failure, ScrcpyArgs>> call(NoParams params) {
    return repository.getScrcpyArgs();
  }
}
