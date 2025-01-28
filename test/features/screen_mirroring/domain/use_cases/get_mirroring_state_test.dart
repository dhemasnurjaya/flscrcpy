import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_mirroring_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockScreenMirroringRepository extends Mock
    implements ScreenMirroringRepository {}

void main() {
  late MockScreenMirroringRepository mockScreenMirroringRepository;
  late GetMirroringState usecase;

  setUp(() {
    mockScreenMirroringRepository = MockScreenMirroringRepository();
    usecase = GetMirroringState(mockScreenMirroringRepository);
  });

  test('should get mirroring state from the repository', () async {
    // arrange
    const tSerial = 'serial';
    const tMirroringState = MirroringStatus(serial: tSerial, logs: []);
    when(() => mockScreenMirroringRepository.getDeviceState(tSerial))
        .thenAnswer((_) async => right(tMirroringState));

    // act
    final result = await usecase(GetMirroringStateParams(serial: tSerial));

    // assert
    expect(result, right(tMirroringState));
    verify(() => mockScreenMirroringRepository.getDeviceState(tSerial));
  });
}
