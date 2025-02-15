import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_args_model.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_scrcpy_args.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockScreenMirroringRepository extends Mock
    implements ScreenMirroringRepository {}

void main() {
  late MockScreenMirroringRepository mockScreenMirroringRepository;
  late GetScrcpyArgs usecase;

  setUp(() {
    mockScreenMirroringRepository = MockScreenMirroringRepository();
    usecase = GetScrcpyArgs(mockScreenMirroringRepository);
  });

  test('should get scrcpy params config from the repository', () async {
    // arrange
    final tModel = ScrcpyArgsModel.defaults();
    final tScrcpyArgs = ScrcpyArgs.fromModel(tModel);
    when(() => mockScreenMirroringRepository.getScrcpyArgs())
        .thenAnswer((_) async => Right(tScrcpyArgs));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, Right(tScrcpyArgs));
    verify(() => mockScreenMirroringRepository.getScrcpyArgs());
  });
}
