import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/core/process/stream_shell.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/start_mirroring.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/stop_mirroring.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/mirroring/mirroring_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockStartMirroring extends Mock implements StartMirroring {}

class MockStopMirroring extends Mock implements StopMirroring {}

class MockGetMirroringStatus extends Mock implements GetMirroringStatus {}

void main() {
  late MockStartMirroring mockStartMirroring;
  late MockStopMirroring mockStopMirroring;
  late MockGetMirroringStatus mockGetMirroringStatus;
  late MirroringBloc bloc;

  setUp(() {
    mockStartMirroring = MockStartMirroring();
    mockStopMirroring = MockStopMirroring();
    mockGetMirroringStatus = MockGetMirroringStatus();
    bloc = MirroringBloc(
      startMirroring: mockStartMirroring,
      stopMirroring: mockStopMirroring,
      getMirroringState: mockGetMirroringStatus,
    );
  });

  const tDevice = DeviceInfo(
    adbSerial: '123456789',
    androidVersion: '11',
    buildVersion: 'ABC123',
    productDevice: 'Pixel 3',
    productModel: 'Pixel 3',
    sdkVersion: "30",
    securityPatch: '2021-01-01',
  );

  test('initial state should be MirroringInitial', () {
    // assert
    expect(bloc.state, const MirroringInitial());
  });

  group('StartMirroringEvent', () {
    test('should emit [Starting, Started] when start mirroring success', () {
      // arrange
      when(() => mockStartMirroring(const StartMirroringParams(tDevice)))
          .thenAnswer((_) async => right(null));
      // assert later
      const tExpected = [
        MirroringStarted(tDevice),
      ];
      expectLater(bloc.stream, emitsInOrder(tExpected));
      // act
      bloc.add(StartMirroringEvent(tDevice));
    });

    test('should emit [Starting, Error] when start mirroring error', () {
      // arrange
      when(() => mockStartMirroring(const StartMirroringParams(tDevice)))
          .thenAnswer((_) async => left(ExecutionFailure(message: 'error')));
      // assert later
      const tExpected = [
        MirroringError(message: 'error'),
      ];
      expectLater(bloc.stream, emitsInOrder(tExpected));
      // act
      bloc.add(StartMirroringEvent(tDevice));
    });
  });

  group('StopMirroringEvent', () {
    test('should emit [Stopping, Stopped] when stop mirroring success', () {
      // arrange
      when(() => mockStopMirroring(const StopMirroringParams(tDevice)))
          .thenAnswer((_) async => right(null));
      // assert later
      const tExpected = [
        MirroringStopped(tDevice),
      ];
      expectLater(bloc.stream, emitsInOrder(tExpected));
      // act
      bloc.add(StopMirroringEvent(tDevice));
    });

    test('should emit [Stopping, Error] when stop mirroring error', () {
      // arrange
      when(() => mockStopMirroring(const StopMirroringParams(tDevice)))
          .thenAnswer((_) async => left(ExecutionFailure(message: 'error')));
      // assert later
      const tExpected = [
        MirroringError(message: 'error'),
      ];
      expectLater(bloc.stream, emitsInOrder(tExpected));
      // act
      bloc.add(StopMirroringEvent(tDevice));
    });
  });

  group('GetMirroringStatusEvent', () {
    test(
        'should emit [UpdatingMirroringStatus] when get mirroring status success',
        () {
      // arrange
      final tStatus = MirroringStatus(
        serial: tDevice.adbSerial,
        shellStatus: StreamShellStatus.stopped,
        logs: [],
      );
      when(() => mockGetMirroringStatus(
              GetMirroringStatusParams(serial: tDevice.adbSerial)))
          .thenAnswer((_) async => right(tStatus));
      // assert later
      final tExpected = [
        const UpdatingMirroringStatus(tDevice),
        MirroringStatusUpdated(tStatus),
      ];
      expectLater(bloc.stream, emitsInOrder(tExpected));
      // act
      bloc.add(GetMirroringStatusEvent(tDevice));
    });
  });
}
