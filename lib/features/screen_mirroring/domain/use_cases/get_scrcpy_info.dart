import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetScrcpyInfo extends UseCase<ScrcpyInfo, NoParams> {
  final ScreenMirroringRepository repository;

  GetScrcpyInfo(this.repository);

  @override
  Future<Either<Failure, ScrcpyInfo>> call(NoParams params) {
    return repository.getScrcpyInfo();
  }
}
