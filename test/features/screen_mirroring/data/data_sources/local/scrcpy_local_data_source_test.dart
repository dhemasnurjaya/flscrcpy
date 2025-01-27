import 'package:flscrcpy/core/data/local/cache.dart';
import 'package:flscrcpy/core/process/exec_command.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/scrcpy_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/mirroring_status_model.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_info_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExecCommand extends Mock implements ExecCommand {}

class MockMirroringStateCache extends Mock
    implements Cache<String, MirroringStatusModel> {}

void main() {
  late MockExecCommand mockExecCommand;
  late MockMirroringStateCache mockMirroringStateCache;
  late ScrcpyLocalDataSource dataSource;

  setUp(() {
    mockExecCommand = MockExecCommand();
    mockMirroringStateCache = MockMirroringStateCache();
    dataSource = ScrcpyLocalDataSourceImpl(
      execCommand: mockExecCommand,
      mirroringStatusCache: mockMirroringStateCache,
    );
  });

  test('should return scrcpy info', () async {
    // arrange
    const tOutput = 'scrcpy 3.1 <https://github.com/Genymobile/scrcpy>'
        '\n'
        'Dependencies (compiled / linked):\n'
        ' - SDL: 2.30.10 / 2.30.10\n'
        ' - libavcodec: 61.19.100 / 61.19.100\n'
        ' - libavformat: 61.7.100 / 61.7.100\n'
        ' - libavutil: 59.39.100 / 59.39.100\n'
        ' - libusb: - / 1.0.27';
    when(() => mockExecCommand.oneShot(any(), any()))
        .thenAnswer((_) async => tOutput);

    // act
    final result = await dataSource.getScrcpyInfo();

    // assert
    const tExpectedModel = ScrcpyInfoModel(version: '3.1', dependencies: [
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
    expect(result, tExpectedModel);
  });

  test('should start scrcpy with the given arguments', () async {
    // TODO: implement test
  });

  test('should stop scrcpy with the given serial', () async {
    // TODO: implement test
  });

  test('should get the device mirroring state with the given serial', () async {
    // arrange
    const tSerial = 'serial';
    when(() => mockMirroringStateCache.read(tSerial))
        .thenAnswer((_) async => null);
    // act
    final result = await dataSource.getDeviceStatus(tSerial);
    // assert
    expect(result, isNull);
  });
}
