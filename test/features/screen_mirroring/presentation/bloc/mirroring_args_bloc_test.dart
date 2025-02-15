import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_args_model.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/set_scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/mirroring_args/mirroring_args_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockGetScrcpyArgs extends Mock implements GetScrcpyArgs {}

class MockSetScrcpyArgs extends Mock implements SetScrcpyArgs {}

void main() {
  late MockGetScrcpyArgs mockGetScrcpyArgs;
  late MockSetScrcpyArgs mockSetScrcpyArgs;
  late MirroringArgsBloc bloc;

  setUp(() {
    mockGetScrcpyArgs = MockGetScrcpyArgs();
    mockSetScrcpyArgs = MockSetScrcpyArgs();
    bloc = MirroringArgsBloc(
      getScrcpyArgs: mockGetScrcpyArgs,
      setScrcpyArgs: mockSetScrcpyArgs,
    );
  });

  test('initial state should be MirroringArgsInitial', () {
    // assert
    expect(bloc.state, const MirroringArgsInitial());
  });

  group('GetMirroringArgsEvent', () {
    const tParams = NoParams();
    final tScrcpyArgs = ScrcpyArgs.fromModel(ScrcpyArgsModel.defaults());

    test('should get scrcpy args from the use case', () async {
      // arrange
      when(() => mockGetScrcpyArgs(tParams))
          .thenAnswer((_) async => Right(tScrcpyArgs));
      // act
      bloc.add(const GetMirroringArgsEvent());
      await untilCalled(() => mockGetScrcpyArgs(tParams));
      // assert
      verify(() => mockGetScrcpyArgs(tParams));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async {
      // arrange
      when(() => mockGetScrcpyArgs(tParams))
          .thenAnswer((_) async => Right(tScrcpyArgs));
      // assert later
      final expected = [
        const MirroringArgsLoading(),
        MirroringArgsLoaded(tScrcpyArgs),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(const GetMirroringArgsEvent());
    });

    test('should emit [Loading, Error] when getting data fails', () async {
      // arrange
      final tFailure = ExecutionFailure(message: 'Failed to get scrcpy args');
      when(() => mockGetScrcpyArgs(tParams))
          .thenAnswer((_) async => Left(tFailure));
      // assert later
      final expected = [
        const MirroringArgsLoading(),
        MirroringArgsError(tFailure.message, cause: tFailure.cause),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(const GetMirroringArgsEvent());
    });
  });

  group('UpdateMirroringArgsEvent', () {
    final tScrcpyArgs = ScrcpyArgs.fromModel(ScrcpyArgsModel.defaults());

    test('should set scrcpy args from the use case', () async {
      // arrange
      when(() => mockSetScrcpyArgs(SetScrcpyArgsParams(tScrcpyArgs)))
          .thenAnswer((_) async => Right(null));
      // act
      bloc.add(UpdateMirroringArgsEvent(tScrcpyArgs));
      await untilCalled(
          () => mockSetScrcpyArgs(SetScrcpyArgsParams(tScrcpyArgs)));
      // assert
      verify(() => mockSetScrcpyArgs(SetScrcpyArgsParams(tScrcpyArgs)));
    });

    test('should emit [Loading, Loaded] when data is set successfully',
        () async {
      // arrange
      when(() => mockSetScrcpyArgs(SetScrcpyArgsParams(tScrcpyArgs)))
          .thenAnswer((_) async => Right(null));
      // assert later
      final expected = [
        const MirroringArgsLoading(),
        MirroringArgsLoaded(tScrcpyArgs),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(UpdateMirroringArgsEvent(tScrcpyArgs));
    });

    test('should emit [Loading, Error] when setting data fails', () async {
      // arrange
      final tFailure = ExecutionFailure(message: 'Failed to set scrcpy args');
      when(() => mockSetScrcpyArgs(SetScrcpyArgsParams(tScrcpyArgs)))
          .thenAnswer((_) async => Left(tFailure));
      // assert later
      final expected = [
        const MirroringArgsLoading(),
        MirroringArgsError(tFailure.message, cause: tFailure.cause),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(UpdateMirroringArgsEvent(tScrcpyArgs));
    });
  });
}
