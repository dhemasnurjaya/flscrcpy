import 'package:flscrcpy/core/process/exec_command.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/adb_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/device_info_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExecCommand extends Mock implements ExecCommand {}

void main() {
  late MockExecCommand mockExecCommand;
  late AdbLocalDataSource dataSource;

  setUp(() {
    mockExecCommand = MockExecCommand();
    dataSource = AdbLocalDataSourceImpl(mockExecCommand);
  });

  test('should list device serials', () async {
    // arrange
    const tDevice1 = 'emulator-5554';
    const tDevice2 = 'emulator-5556';
    const tOutput = 'List of devices attached\n'
        '$tDevice1\tdevice\n'
        '$tDevice2\tdevice\n';
    when(() => mockExecCommand.oneShot(any(), any()))
        .thenAnswer((_) async => tOutput);
    // act
    final result = await dataSource.listSerials();
    // assert
    expect(result, [tDevice1, tDevice2]);
  });

  test('should get device information', () async {
    // arrange
    final tOutput = '[ro.product.model]: [Pixel 3]\n'
        '[ro.product.device]: [blueline]\n'
        '[ro.build.version.release]: [11]\n'
        '[ro.build.version.sdk]: [30]\n'
        '[ro.build.id]: [RP1A.201005.004]\n'
        '[ro.build.version.security_patch]: [2020-10-05]\n';
    when(() => mockExecCommand.oneShot(any(), any()))
        .thenAnswer((_) async => tOutput);
    // act
    final result = await dataSource.getDeviceInfo('emulator-5554');
    // assert
    const tExpectedModel = DeviceInfoModel(
      productModel: 'Pixel 3',
      productDevice: 'blueline',
      androidVersion: '11',
      sdkVersion: '30',
      buildVersion: 'RP1A.201005.004',
      securityPatch: '2020-10-05',
    );
    expect(result, tExpectedModel);
  });
}
