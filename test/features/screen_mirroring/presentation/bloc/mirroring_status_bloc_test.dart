import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_mirroring_state.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/mirorring_status/mirroring_status_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockGetMirroringState extends Mock implements GetMirroringState {}

void main() {
  late MockGetMirroringState mockGetMirroringState;
  late MirroringStatusBloc bloc;

  setUp(() {
    mockGetMirroringState = MockGetMirroringState();
    bloc = MirroringStatusBloc(getMirroringState: mockGetMirroringState);
  });

  test('initial state should be MirroringStatusInitial', () {
    // assert
    expect(bloc.state, const MirroringStatusInitial());
  });

  group('GetMirroringStatus', () {
    test('should emit [Loading, Loaded] when data is gotten successfully', () {
      // arrange
      const tSerial = '123456789';
      const tMirroringStatus = MirroringStatus(serial: tSerial, logs: []);
      when(() =>
              mockGetMirroringState(GetMirroringStateParams(serial: tSerial)))
          .thenAnswer((_) async => right(tMirroringStatus));
      // assert later
      const expected = [
        MirroringStatusLoading(),
        MirroringStatusLoaded(tMirroringStatus),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(GetMirroringStatus(tSerial));
    });

    test('should emit [Loading, Error] when data is empty', () {
      // arrange
      const tSerial = '123456789';
      const tFailure = ExecutionFailure(message: 'Error');
      when(() =>
              mockGetMirroringState(GetMirroringStateParams(serial: tSerial)))
          .thenAnswer((_) async => left(tFailure));
      // assert later
      final expected = [
        const MirroringStatusLoading(),
        MirroringStatusError(message: tFailure.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(GetMirroringStatus(tSerial));
    });
  });
}
