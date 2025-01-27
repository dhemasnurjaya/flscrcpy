import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_scrcpy_info.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/executable_info/executable_info_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockGetScrcpyInfo extends Mock implements GetScrcpyInfo {}

void main() {
  late MockGetScrcpyInfo mockGetScrcpyInfo;
  late ExecutableInfoBloc bloc;

  setUp(() {
    mockGetScrcpyInfo = MockGetScrcpyInfo();
    bloc = ExecutableInfoBloc(getScrcpyInfo: mockGetScrcpyInfo);
  });

  test('initial state should be ExecutableInfoInitial', () {
    // assert
    expect(bloc.state, const ExecutableInfoInitial());
  });

  group('GetExecutableInfo', () {
    test('should emit [Loading, Loaded] when data is gotten successfully', () {
      // arrange
      const tScrcpyInfo = ScrcpyInfo(
        version: '1.17',
        dependencies: [],
      );
      when(() => mockGetScrcpyInfo(const NoParams()))
          .thenAnswer((_) async => right(tScrcpyInfo));
      // assert later
      const expected = [
        ExecutableInfoLoading(),
        ExecutableInfoLoaded(tScrcpyInfo),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(const GetExecutableInfo());
    });
  });

  test('should emit [Loading, Error] when getting data fails', () {
    // arrange
    const tFailure = ExecutionFailure(message: 'Server Failure');
    when(() => mockGetScrcpyInfo(const NoParams()))
        .thenAnswer((_) async => left(tFailure));
    // assert later
    final expected = [
      const ExecutableInfoLoading(),
      ExecutableInfoError(message: tFailure.message),
    ];
    expectLater(bloc.stream, emitsInOrder(expected));
    // act
    bloc.add(const GetExecutableInfo());
  });
}
