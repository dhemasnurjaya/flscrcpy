import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/set_scrcpy_args.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockScreenMirroringRepository extends Mock
    implements ScreenMirroringRepository {}

void main() {
  late MockScreenMirroringRepository mockScreenMirroringRepository;
  late SetScrcpyArgs usecase;

  setUp(() {
    mockScreenMirroringRepository = MockScreenMirroringRepository();
    usecase = SetScrcpyArgs(mockScreenMirroringRepository);
  });

  test('should set scrcpy args from repository', () async {
    // arrange
    final tScrcpyArgs = ScrcpyArgs(
      args: {},
    );
    when(() => mockScreenMirroringRepository.setScrcpyArgs(tScrcpyArgs))
        .thenAnswer((_) async => Right(null));
    // act
    final result = await usecase(SetScrcpyArgsParams(tScrcpyArgs));
    // assert
    expect(result, Right(null));
    verify(() => mockScreenMirroringRepository.setScrcpyArgs(tScrcpyArgs));
    verifyNoMoreInteractions(mockScreenMirroringRepository);
  });
}
