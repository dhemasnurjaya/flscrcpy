import 'package:flscrcpy/core/process/stream_shell.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_mirroring_status.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockScreenMirroringRepository extends Mock
    implements ScreenMirroringRepository {}

void main() {
  late MockScreenMirroringRepository mockScreenMirroringRepository;
  late GetMirroringStatus usecase;

  setUp(() {
    mockScreenMirroringRepository = MockScreenMirroringRepository();
    usecase = GetMirroringStatus(mockScreenMirroringRepository);
  });

  test('should get mirroring state from the repository', () async {
    // arrange
    const tSerial = 'serial';
    const tMirroringState = MirroringStatus(
      serial: tSerial,
      shellStatus: StreamShellStatus.stopped,
      logs: [],
    );
    when(() => mockScreenMirroringRepository.getMirroringStatus(tSerial))
        .thenAnswer((_) async => right(tMirroringState));

    // act
    final result = await usecase(GetMirroringStatusParams(serial: tSerial));

    // assert
    expect(result, right(tMirroringState));
    verify(() => mockScreenMirroringRepository.getMirroringStatus(tSerial));
  });
}
