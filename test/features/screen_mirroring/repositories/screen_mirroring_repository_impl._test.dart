import 'package:flscrcpy/core/error/failures.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/adb_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/scrcpy_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/device_info_model.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_info_model.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_run_args_model.dart';
import 'package:flscrcpy/features/screen_mirroring/data/repositories/screen_mirroring_repository_impl.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_info.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockAdbLocalDataSource extends Mock implements AdbLocalDataSource {}

class MockScrcpyLocalDataSource extends Mock implements ScrcpyLocalDataSource {}

void main() {
  late MockAdbLocalDataSource mockAdbLocalDataSource;
  late MockScrcpyLocalDataSource mockScrcpyLocalDataSource;
  late ScreenMirroringRepositoryImpl repository;

  setUp(() {
    mockAdbLocalDataSource = MockAdbLocalDataSource();
    mockScrcpyLocalDataSource = MockScrcpyLocalDataSource();
    repository = ScreenMirroringRepositoryImpl(
      adbLocalDataSource: mockAdbLocalDataSource,
      scrcpyLocalDataSource: mockScrcpyLocalDataSource,
    );
  });

  group('getScrcpyInfo', () {
    test('should return scrcpy info from the local data source', () async {
      // arrange
      const tModel = ScrcpyInfoModel(version: '3.1', dependencies: [
        ScrcpyDependencyInfoModel(
          name: 'SDL',
          compiledVersion: '2.30.10',
          linkedVersion: '2.30.10',
        ),
        ScrcpyDependencyInfoModel(
          name: 'libavcodec',
          compiledVersion: '61.19.100',
          linkedVersion: '61.19.100',
        ),
        ScrcpyDependencyInfoModel(
          name: 'libavformat',
          compiledVersion: '61.7.100',
          linkedVersion: '61.7.100',
        ),
        ScrcpyDependencyInfoModel(
          name: 'libavutil',
          compiledVersion: '59.39.100',
          linkedVersion: '59.39.100',
        ),
        ScrcpyDependencyInfoModel(
          name: 'libusb',
          compiledVersion: '-',
          linkedVersion: '1.0.27',
        ),
      ]);

      when(() => mockScrcpyLocalDataSource.getScrcpyInfo())
          .thenAnswer((_) async => tModel);
      // act
      final result = await repository.getScrcpyInfo();
      // assert
      final tExpected = ScrcpyInfo.fromModel(tModel);
      result.fold(
        (l) => fail('should return a ScrcpyInfo'),
        (r) => expect(r, equals(tExpected)),
      );
    });

    test('should return a ExecutionFailure when an exception occurs', () async {
      // arrange
      final tException = Exception('error');
      when(() => mockScrcpyLocalDataSource.getScrcpyInfo())
          .thenThrow(tException);
      // act
      final result = await repository.getScrcpyInfo();
      // assert
      final tExpected = ExecutionFailure(message: tException.toString());
      result.fold(
        (l) => expect(l, equals(tExpected)),
        (r) => fail('should return a ExecutionFailure'),
      );
    });
  });

  group('listDevices', () {
    test(
      'should return a list of devices from the local data source',
      () async {
        // arrange
        final tSerial = 'serial1';
        const tDeviceModel = DeviceInfoModel(
          productModel: 'model',
          productDevice: 'device',
          sdkVersion: "29",
          androidVersion: "10",
          buildVersion: "XXX",
          securityPatch: "2021-01-01",
        );
        when(() => mockAdbLocalDataSource.listSerials())
            .thenAnswer((_) async => [tSerial]);
        when(() => mockAdbLocalDataSource.getDeviceInfo(tSerial))
            .thenAnswer((_) async => tDeviceModel);
        // act
        final result = await repository.listDevices();
        // assert
        final tExpected = [DeviceInfo.fromModel(tSerial, tDeviceModel)];
        result.fold(
          (l) => fail('should return a list of devices'),
          (r) => expect(listEquals(r, tExpected), isTrue),
        );
      },
    );

    test('should return a ExecutionFailure when an exception occurs', () async {
      // arrange
      final tException = Exception('error');
      when(() => mockAdbLocalDataSource.listSerials()).thenThrow(tException);
      // act
      final result = await repository.listDevices();
      // assert
      final tExpected = ExecutionFailure(message: tException.toString());
      result.fold(
        (l) => expect(l, equals(tExpected)),
        (r) => fail('should return a ExecutionFailure'),
      );
    });
  });

  group('startMirroring', () {
    const tSerial = 'serial';
    const tArgs = ScrcpyRunArgsModel(serial: tSerial, videoBitrate: 4000000);

    test('should start mirroring with the given serial', () async {
      // arrange
      when(() => mockScrcpyLocalDataSource.startScrcpy(tArgs))
          .thenAnswer((_) async {});
      // act
      final result = await repository.startMirroring(tSerial);
      // assert
      expect(result, right(null));
      verify(() => mockScrcpyLocalDataSource.startScrcpy(tArgs));
    });

    test('should return a ExecutionFailure when an exception occurs', () async {
      // arrange
      final tException = Exception('error');
      when(() => mockScrcpyLocalDataSource.startScrcpy(tArgs))
          .thenThrow(tException);
      // act
      final result = await repository.startMirroring(tSerial);
      // assert
      final tExpected = ExecutionFailure(message: tException.toString());
      result.fold(
        (l) => expect(l, equals(tExpected)),
        (r) => fail('should return a ExecutionFailure'),
      );
    });
  });

  group('stopMirroring', () {
    const tSerial = 'serial';

    test('should stop mirroring with the given serial', () async {
      // arrange
      when(() => mockScrcpyLocalDataSource.stopScrcpy(tSerial))
          .thenAnswer((_) async {});
      // act
      final result = await repository.stopMirroring(tSerial);
      // assert
      expect(result, right(null));
      verify(() => mockScrcpyLocalDataSource.stopScrcpy(tSerial));
    });

    test('should return a ExecutionFailure when an exception occurs', () async {
      // arrange
      final tException = Exception('error');
      when(() => mockScrcpyLocalDataSource.stopScrcpy(tSerial))
          .thenThrow(tException);
      // act
      final result = await repository.stopMirroring(tSerial);
      // assert
      final tExpected = ExecutionFailure(message: tException.toString());
      result.fold(
        (l) => expect(l, equals(tExpected)),
        (r) => fail('should return a ExecutionFailure'),
      );
    });
  });
}
