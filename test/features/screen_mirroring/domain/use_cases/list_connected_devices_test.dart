import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/list_connected_devices.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockScreenMirroringRepository extends Mock
    implements ScreenMirroringRepository {}

void main() {
  late MockScreenMirroringRepository mockScreenMirroringRepository;
  late ListConnectedDevices useCase;

  setUp(() {
    mockScreenMirroringRepository = MockScreenMirroringRepository();
    useCase = ListConnectedDevices(mockScreenMirroringRepository);
  });

  test('should call listDevices from repository', () async {
    // arrange
    when(() => mockScreenMirroringRepository.listDevices())
        .thenAnswer((_) async => right([]));
    // act
    await useCase(NoParams());
    // assert
    verify(() => mockScreenMirroringRepository.listDevices());
  });
}
