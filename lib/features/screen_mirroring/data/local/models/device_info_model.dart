import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info_model.freezed.dart';

@freezed
class DeviceInfoModel with _$DeviceInfoModel {
  const factory DeviceInfoModel({
    required String? productModel,
    required String? productDevice,
    required String? androidVersion,
    required String? sdkVersion,
    required String? buildVersion,
    required String? securityPatch,
  }) = _DeviceInfoModel;
}
