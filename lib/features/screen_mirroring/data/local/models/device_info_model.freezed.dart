// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceInfoModel {
  String? get productModel => throw _privateConstructorUsedError;
  String? get productDevice => throw _privateConstructorUsedError;
  String? get androidVersion => throw _privateConstructorUsedError;
  String? get sdkVersion => throw _privateConstructorUsedError;
  String? get buildVersion => throw _privateConstructorUsedError;
  String? get securityPatch => throw _privateConstructorUsedError;

  /// Create a copy of DeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceInfoModelCopyWith<DeviceInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoModelCopyWith<$Res> {
  factory $DeviceInfoModelCopyWith(
          DeviceInfoModel value, $Res Function(DeviceInfoModel) then) =
      _$DeviceInfoModelCopyWithImpl<$Res, DeviceInfoModel>;
  @useResult
  $Res call(
      {String? productModel,
      String? productDevice,
      String? androidVersion,
      String? sdkVersion,
      String? buildVersion,
      String? securityPatch});
}

/// @nodoc
class _$DeviceInfoModelCopyWithImpl<$Res, $Val extends DeviceInfoModel>
    implements $DeviceInfoModelCopyWith<$Res> {
  _$DeviceInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = freezed,
    Object? productDevice = freezed,
    Object? androidVersion = freezed,
    Object? sdkVersion = freezed,
    Object? buildVersion = freezed,
    Object? securityPatch = freezed,
  }) {
    return _then(_value.copyWith(
      productModel: freezed == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as String?,
      productDevice: freezed == productDevice
          ? _value.productDevice
          : productDevice // ignore: cast_nullable_to_non_nullable
              as String?,
      androidVersion: freezed == androidVersion
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkVersion: freezed == sdkVersion
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      buildVersion: freezed == buildVersion
          ? _value.buildVersion
          : buildVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      securityPatch: freezed == securityPatch
          ? _value.securityPatch
          : securityPatch // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoModelImplCopyWith<$Res>
    implements $DeviceInfoModelCopyWith<$Res> {
  factory _$$DeviceInfoModelImplCopyWith(_$DeviceInfoModelImpl value,
          $Res Function(_$DeviceInfoModelImpl) then) =
      __$$DeviceInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productModel,
      String? productDevice,
      String? androidVersion,
      String? sdkVersion,
      String? buildVersion,
      String? securityPatch});
}

/// @nodoc
class __$$DeviceInfoModelImplCopyWithImpl<$Res>
    extends _$DeviceInfoModelCopyWithImpl<$Res, _$DeviceInfoModelImpl>
    implements _$$DeviceInfoModelImplCopyWith<$Res> {
  __$$DeviceInfoModelImplCopyWithImpl(
      _$DeviceInfoModelImpl _value, $Res Function(_$DeviceInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModel = freezed,
    Object? productDevice = freezed,
    Object? androidVersion = freezed,
    Object? sdkVersion = freezed,
    Object? buildVersion = freezed,
    Object? securityPatch = freezed,
  }) {
    return _then(_$DeviceInfoModelImpl(
      productModel: freezed == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as String?,
      productDevice: freezed == productDevice
          ? _value.productDevice
          : productDevice // ignore: cast_nullable_to_non_nullable
              as String?,
      androidVersion: freezed == androidVersion
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkVersion: freezed == sdkVersion
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      buildVersion: freezed == buildVersion
          ? _value.buildVersion
          : buildVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      securityPatch: freezed == securityPatch
          ? _value.securityPatch
          : securityPatch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceInfoModelImpl implements _DeviceInfoModel {
  const _$DeviceInfoModelImpl(
      {required this.productModel,
      required this.productDevice,
      required this.androidVersion,
      required this.sdkVersion,
      required this.buildVersion,
      required this.securityPatch});

  @override
  final String? productModel;
  @override
  final String? productDevice;
  @override
  final String? androidVersion;
  @override
  final String? sdkVersion;
  @override
  final String? buildVersion;
  @override
  final String? securityPatch;

  @override
  String toString() {
    return 'DeviceInfoModel(productModel: $productModel, productDevice: $productDevice, androidVersion: $androidVersion, sdkVersion: $sdkVersion, buildVersion: $buildVersion, securityPatch: $securityPatch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoModelImpl &&
            (identical(other.productModel, productModel) ||
                other.productModel == productModel) &&
            (identical(other.productDevice, productDevice) ||
                other.productDevice == productDevice) &&
            (identical(other.androidVersion, androidVersion) ||
                other.androidVersion == androidVersion) &&
            (identical(other.sdkVersion, sdkVersion) ||
                other.sdkVersion == sdkVersion) &&
            (identical(other.buildVersion, buildVersion) ||
                other.buildVersion == buildVersion) &&
            (identical(other.securityPatch, securityPatch) ||
                other.securityPatch == securityPatch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productModel, productDevice,
      androidVersion, sdkVersion, buildVersion, securityPatch);

  /// Create a copy of DeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoModelImplCopyWith<_$DeviceInfoModelImpl> get copyWith =>
      __$$DeviceInfoModelImplCopyWithImpl<_$DeviceInfoModelImpl>(
          this, _$identity);
}

abstract class _DeviceInfoModel implements DeviceInfoModel {
  const factory _DeviceInfoModel(
      {required final String? productModel,
      required final String? productDevice,
      required final String? androidVersion,
      required final String? sdkVersion,
      required final String? buildVersion,
      required final String? securityPatch}) = _$DeviceInfoModelImpl;

  @override
  String? get productModel;
  @override
  String? get productDevice;
  @override
  String? get androidVersion;
  @override
  String? get sdkVersion;
  @override
  String? get buildVersion;
  @override
  String? get securityPatch;

  /// Create a copy of DeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoModelImplCopyWith<_$DeviceInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
