import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/domain/use_case.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:fpdart/fpdart.dart';

class ListConnectedDevices extends UseCase<List<DeviceInfo>, NoParams> {
  final ScreenMirroringRepository repository;

  ListConnectedDevices(this.repository);

  @override
  Future<Either<Failure, List<DeviceInfo>>> call(NoParams params) {
    return repository.listDevices();
  }
}
