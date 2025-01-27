import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/list_connected_devices.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/devices/devices_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockListConnectedDevices extends Mock implements ListConnectedDevices {}

void main() {
  late MockListConnectedDevices mockListConnectedDevices;
  late DevicesBloc bloc;

  setUp(() {
    mockListConnectedDevices = MockListConnectedDevices();
    bloc = DevicesBloc(listConnectedDevices: mockListConnectedDevices);
  });

  test('initial state should be DevicesInitial', () {
    // assert
    expect(bloc.state, const DevicesInitial());
  });

  group('GetDevicesEvent', () {
    test('should emit [Loading, DevicesFound] when data is gotten successfully',
        () {
      // arrange
      const tDevices = <DeviceInfo>[
        DeviceInfo(
          adbSerial: '123456789',
          androidVersion: '11',
          buildVersion: 'ABC123',
          productDevice: 'Pixel 3',
          productModel: 'Pixel 3',
          sdkVersion: "30",
          securityPatch: '2021-01-01',
        ),
      ];
      when(() => mockListConnectedDevices(const NoParams()))
          .thenAnswer((_) async => right(tDevices));
      // assert later
      const expected = [
        DevicesLoading(),
        DevicesFound(tDevices),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(const GetDevicesEvent());
    });

    test('should emit [Loading, DevicesNotFound] when data is empty', () {
      // arrange
      const tDevices = <DeviceInfo>[];
      when(() => mockListConnectedDevices(const NoParams()))
          .thenAnswer((_) async => right(tDevices));
      // assert later
      const expected = [
        DevicesLoading(),
        DevicesNotFound(),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(const GetDevicesEvent());
    });

    test('should emit [Loading, DevicesError] when getting data fails', () {
      // arrange
      const tFailure = ExecutionFailure(message: 'Server Failure');
      when(() => mockListConnectedDevices(const NoParams()))
          .thenAnswer((_) async => left(tFailure));
      // assert later
      final expected = [
        const DevicesLoading(),
        DevicesError(message: tFailure.message),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      // act
      bloc.add(const GetDevicesEvent());
    });
  });
}
