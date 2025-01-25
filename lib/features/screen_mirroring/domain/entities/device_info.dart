import 'package:flscrcpy/features/screen_mirroring/data/local/models/device_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info.freezed.dart';

@freezed
class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo({
    required String adbSerial,
    required String productModel,
    required String productDevice,
    required String androidVersion,
    required String sdkVersion,
    required String buildVersion,
    required String securityPatch,
  }) = _DeviceInfo;

  factory DeviceInfo.fromModel(
    String serial,
    DeviceInfoModel deviceInfoModel,
  ) {
    return DeviceInfo(
      adbSerial: serial,
      productModel: deviceInfoModel.productModel ?? 'Unknown Model',
      productDevice: deviceInfoModel.productDevice ?? 'Unknown Device',
      androidVersion:
          deviceInfoModel.androidVersion ?? 'Unknown Android Version',
      sdkVersion: deviceInfoModel.sdkVersion ?? 'Unknown SDK Version',
      buildVersion: deviceInfoModel.buildVersion ?? 'Unknown Build Version',
      securityPatch: deviceInfoModel.securityPatch ?? 'Unknown Security Patch',
    );
  }

  @override
  String toString() => adbSerial;
}
