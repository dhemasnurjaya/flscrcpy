import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/start_mirroring.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockScreenMirroringRepository extends Mock
    implements ScreenMirroringRepository {}

void main() {
  late MockScreenMirroringRepository mockScreenMirroringRepository;
  late StartMirroring useCase;

  setUp(() {
    mockScreenMirroringRepository = MockScreenMirroringRepository();
    useCase = StartMirroring(mockScreenMirroringRepository);
  });

  test('should call startMirroring from repository', () async {
    // arrange
    const tDevice = DeviceInfo(
      adbSerial: '123',
      androidVersion: '10',
      buildVersion: '1.0',
      productDevice: 'device',
      productModel: 'model',
      sdkVersion: "29",
      securityPatch: '2021-01-01',
    );
    const tParams = StartMirroringParams(tDevice);
    when(() => mockScreenMirroringRepository.startMirroring(tDevice.adbSerial))
        .thenAnswer((_) async => right(null));
    // act
    await useCase(tParams);
    // assert
    verify(() => mockScreenMirroringRepository
        .startMirroring(tParams.deviceInfo.adbSerial));
  });
}
