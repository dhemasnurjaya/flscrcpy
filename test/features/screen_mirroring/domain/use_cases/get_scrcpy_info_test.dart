import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_scrcpy_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockScreenMirroringRepository extends Mock
    implements ScreenMirroringRepository {}

void main() {
  late MockScreenMirroringRepository mockScreenMirroringRepository;
  late GetScrcpyInfo useCase;

  setUp(() {
    mockScreenMirroringRepository = MockScreenMirroringRepository();
    useCase = GetScrcpyInfo(mockScreenMirroringRepository);
  });

  test('should call getScrcpyInfo from repository', () async {
    // arrange
    final tScrcpyInfo = ScrcpyInfo(
      version: "1.0",
      dependencies: [],
    );
    when(() => mockScreenMirroringRepository.getScrcpyInfo())
        .thenAnswer((_) async => right(tScrcpyInfo));
    // act
    await useCase(const NoParams());
    // assert
    verify(() => mockScreenMirroringRepository.getScrcpyInfo());
  });
}
