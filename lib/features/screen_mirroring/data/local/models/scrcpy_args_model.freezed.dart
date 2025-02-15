// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrcpy_args_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScrcpyArgModel _$ScrcpyArgModelFromJson(Map<String, dynamic> json) {
  return _ScrcpyArgModel.fromJson(json);
}

/// @nodoc
mixin _$ScrcpyArgModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get paramName => throw _privateConstructorUsedError;
  String get paramValue => throw _privateConstructorUsedError;
  ScrcpyArgTypes get type => throw _privateConstructorUsedError;

  /// Serializes this ScrcpyArgModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyArgModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyArgModelCopyWith<ScrcpyArgModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyArgModelCopyWith<$Res> {
  factory $ScrcpyArgModelCopyWith(
          ScrcpyArgModel value, $Res Function(ScrcpyArgModel) then) =
      _$ScrcpyArgModelCopyWithImpl<$Res, ScrcpyArgModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      String paramName,
      String paramValue,
      ScrcpyArgTypes type});
}

/// @nodoc
class _$ScrcpyArgModelCopyWithImpl<$Res, $Val extends ScrcpyArgModel>
    implements $ScrcpyArgModelCopyWith<$Res> {
  _$ScrcpyArgModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyArgModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? paramName = null,
    Object? paramValue = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      paramName: null == paramName
          ? _value.paramName
          : paramName // ignore: cast_nullable_to_non_nullable
              as String,
      paramValue: null == paramValue
          ? _value.paramValue
          : paramValue // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgTypes,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrcpyArgModelImplCopyWith<$Res>
    implements $ScrcpyArgModelCopyWith<$Res> {
  factory _$$ScrcpyArgModelImplCopyWith(_$ScrcpyArgModelImpl value,
          $Res Function(_$ScrcpyArgModelImpl) then) =
      __$$ScrcpyArgModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String paramName,
      String paramValue,
      ScrcpyArgTypes type});
}

/// @nodoc
class __$$ScrcpyArgModelImplCopyWithImpl<$Res>
    extends _$ScrcpyArgModelCopyWithImpl<$Res, _$ScrcpyArgModelImpl>
    implements _$$ScrcpyArgModelImplCopyWith<$Res> {
  __$$ScrcpyArgModelImplCopyWithImpl(
      _$ScrcpyArgModelImpl _value, $Res Function(_$ScrcpyArgModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyArgModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? paramName = null,
    Object? paramValue = null,
    Object? type = null,
  }) {
    return _then(_$ScrcpyArgModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      paramName: null == paramName
          ? _value.paramName
          : paramName // ignore: cast_nullable_to_non_nullable
              as String,
      paramValue: null == paramValue
          ? _value.paramValue
          : paramValue // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgTypes,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ScrcpyArgModelImpl implements _ScrcpyArgModel {
  const _$ScrcpyArgModelImpl(
      {required this.name,
      required this.description,
      required this.paramName,
      required this.paramValue,
      required this.type});

  factory _$ScrcpyArgModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScrcpyArgModelImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String paramName;
  @override
  final String paramValue;
  @override
  final ScrcpyArgTypes type;

  @override
  String toString() {
    return 'ScrcpyArgModel(name: $name, description: $description, paramName: $paramName, paramValue: $paramValue, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyArgModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.paramName, paramName) ||
                other.paramName == paramName) &&
            (identical(other.paramValue, paramValue) ||
                other.paramValue == paramValue) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, paramName, paramValue, type);

  /// Create a copy of ScrcpyArgModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyArgModelImplCopyWith<_$ScrcpyArgModelImpl> get copyWith =>
      __$$ScrcpyArgModelImplCopyWithImpl<_$ScrcpyArgModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScrcpyArgModelImplToJson(
      this,
    );
  }
}

abstract class _ScrcpyArgModel implements ScrcpyArgModel {
  const factory _ScrcpyArgModel(
      {required final String name,
      required final String description,
      required final String paramName,
      required final String paramValue,
      required final ScrcpyArgTypes type}) = _$ScrcpyArgModelImpl;

  factory _ScrcpyArgModel.fromJson(Map<String, dynamic> json) =
      _$ScrcpyArgModelImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get paramName;
  @override
  String get paramValue;
  @override
  ScrcpyArgTypes get type;

  /// Create a copy of ScrcpyArgModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyArgModelImplCopyWith<_$ScrcpyArgModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScrcpyArgsModel _$ScrcpyArgsModelFromJson(Map<String, dynamic> json) {
  return _ScrcpyArgsModel.fromJson(json);
}

/// @nodoc
mixin _$ScrcpyArgsModel {
  ScrcpyArgModel get turnScreenOff => throw _privateConstructorUsedError;
  ScrcpyArgModel get stayAwake => throw _privateConstructorUsedError;
  ScrcpyArgModel get showTouches => throw _privateConstructorUsedError;
  ScrcpyArgModel get maxSize => throw _privateConstructorUsedError;
  ScrcpyArgModel get maxFps => throw _privateConstructorUsedError;
  ScrcpyArgModel get videoBitrate => throw _privateConstructorUsedError;
  ScrcpyArgModel get audioBitrate => throw _privateConstructorUsedError;

  /// Serializes this ScrcpyArgsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyArgsModelCopyWith<ScrcpyArgsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyArgsModelCopyWith<$Res> {
  factory $ScrcpyArgsModelCopyWith(
          ScrcpyArgsModel value, $Res Function(ScrcpyArgsModel) then) =
      _$ScrcpyArgsModelCopyWithImpl<$Res, ScrcpyArgsModel>;
  @useResult
  $Res call(
      {ScrcpyArgModel turnScreenOff,
      ScrcpyArgModel stayAwake,
      ScrcpyArgModel showTouches,
      ScrcpyArgModel maxSize,
      ScrcpyArgModel maxFps,
      ScrcpyArgModel videoBitrate,
      ScrcpyArgModel audioBitrate});

  $ScrcpyArgModelCopyWith<$Res> get turnScreenOff;
  $ScrcpyArgModelCopyWith<$Res> get stayAwake;
  $ScrcpyArgModelCopyWith<$Res> get showTouches;
  $ScrcpyArgModelCopyWith<$Res> get maxSize;
  $ScrcpyArgModelCopyWith<$Res> get maxFps;
  $ScrcpyArgModelCopyWith<$Res> get videoBitrate;
  $ScrcpyArgModelCopyWith<$Res> get audioBitrate;
}

/// @nodoc
class _$ScrcpyArgsModelCopyWithImpl<$Res, $Val extends ScrcpyArgsModel>
    implements $ScrcpyArgsModelCopyWith<$Res> {
  _$ScrcpyArgsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turnScreenOff = null,
    Object? stayAwake = null,
    Object? showTouches = null,
    Object? maxSize = null,
    Object? maxFps = null,
    Object? videoBitrate = null,
    Object? audioBitrate = null,
  }) {
    return _then(_value.copyWith(
      turnScreenOff: null == turnScreenOff
          ? _value.turnScreenOff
          : turnScreenOff // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      stayAwake: null == stayAwake
          ? _value.stayAwake
          : stayAwake // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      showTouches: null == showTouches
          ? _value.showTouches
          : showTouches // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      maxSize: null == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      maxFps: null == maxFps
          ? _value.maxFps
          : maxFps // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      videoBitrate: null == videoBitrate
          ? _value.videoBitrate
          : videoBitrate // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      audioBitrate: null == audioBitrate
          ? _value.audioBitrate
          : audioBitrate // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
    ) as $Val);
  }

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrcpyArgModelCopyWith<$Res> get turnScreenOff {
    return $ScrcpyArgModelCopyWith<$Res>(_value.turnScreenOff, (value) {
      return _then(_value.copyWith(turnScreenOff: value) as $Val);
    });
  }

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrcpyArgModelCopyWith<$Res> get stayAwake {
    return $ScrcpyArgModelCopyWith<$Res>(_value.stayAwake, (value) {
      return _then(_value.copyWith(stayAwake: value) as $Val);
    });
  }

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrcpyArgModelCopyWith<$Res> get showTouches {
    return $ScrcpyArgModelCopyWith<$Res>(_value.showTouches, (value) {
      return _then(_value.copyWith(showTouches: value) as $Val);
    });
  }

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrcpyArgModelCopyWith<$Res> get maxSize {
    return $ScrcpyArgModelCopyWith<$Res>(_value.maxSize, (value) {
      return _then(_value.copyWith(maxSize: value) as $Val);
    });
  }

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrcpyArgModelCopyWith<$Res> get maxFps {
    return $ScrcpyArgModelCopyWith<$Res>(_value.maxFps, (value) {
      return _then(_value.copyWith(maxFps: value) as $Val);
    });
  }

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrcpyArgModelCopyWith<$Res> get videoBitrate {
    return $ScrcpyArgModelCopyWith<$Res>(_value.videoBitrate, (value) {
      return _then(_value.copyWith(videoBitrate: value) as $Val);
    });
  }

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScrcpyArgModelCopyWith<$Res> get audioBitrate {
    return $ScrcpyArgModelCopyWith<$Res>(_value.audioBitrate, (value) {
      return _then(_value.copyWith(audioBitrate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScrcpyArgsModelImplCopyWith<$Res>
    implements $ScrcpyArgsModelCopyWith<$Res> {
  factory _$$ScrcpyArgsModelImplCopyWith(_$ScrcpyArgsModelImpl value,
          $Res Function(_$ScrcpyArgsModelImpl) then) =
      __$$ScrcpyArgsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScrcpyArgModel turnScreenOff,
      ScrcpyArgModel stayAwake,
      ScrcpyArgModel showTouches,
      ScrcpyArgModel maxSize,
      ScrcpyArgModel maxFps,
      ScrcpyArgModel videoBitrate,
      ScrcpyArgModel audioBitrate});

  @override
  $ScrcpyArgModelCopyWith<$Res> get turnScreenOff;
  @override
  $ScrcpyArgModelCopyWith<$Res> get stayAwake;
  @override
  $ScrcpyArgModelCopyWith<$Res> get showTouches;
  @override
  $ScrcpyArgModelCopyWith<$Res> get maxSize;
  @override
  $ScrcpyArgModelCopyWith<$Res> get maxFps;
  @override
  $ScrcpyArgModelCopyWith<$Res> get videoBitrate;
  @override
  $ScrcpyArgModelCopyWith<$Res> get audioBitrate;
}

/// @nodoc
class __$$ScrcpyArgsModelImplCopyWithImpl<$Res>
    extends _$ScrcpyArgsModelCopyWithImpl<$Res, _$ScrcpyArgsModelImpl>
    implements _$$ScrcpyArgsModelImplCopyWith<$Res> {
  __$$ScrcpyArgsModelImplCopyWithImpl(
      _$ScrcpyArgsModelImpl _value, $Res Function(_$ScrcpyArgsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turnScreenOff = null,
    Object? stayAwake = null,
    Object? showTouches = null,
    Object? maxSize = null,
    Object? maxFps = null,
    Object? videoBitrate = null,
    Object? audioBitrate = null,
  }) {
    return _then(_$ScrcpyArgsModelImpl(
      turnScreenOff: null == turnScreenOff
          ? _value.turnScreenOff
          : turnScreenOff // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      stayAwake: null == stayAwake
          ? _value.stayAwake
          : stayAwake // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      showTouches: null == showTouches
          ? _value.showTouches
          : showTouches // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      maxSize: null == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      maxFps: null == maxFps
          ? _value.maxFps
          : maxFps // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      videoBitrate: null == videoBitrate
          ? _value.videoBitrate
          : videoBitrate // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
      audioBitrate: null == audioBitrate
          ? _value.audioBitrate
          : audioBitrate // ignore: cast_nullable_to_non_nullable
              as ScrcpyArgModel,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ScrcpyArgsModelImpl extends _ScrcpyArgsModel {
  const _$ScrcpyArgsModelImpl(
      {required this.turnScreenOff,
      required this.stayAwake,
      required this.showTouches,
      required this.maxSize,
      required this.maxFps,
      required this.videoBitrate,
      required this.audioBitrate})
      : super._();

  factory _$ScrcpyArgsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScrcpyArgsModelImplFromJson(json);

  @override
  final ScrcpyArgModel turnScreenOff;
  @override
  final ScrcpyArgModel stayAwake;
  @override
  final ScrcpyArgModel showTouches;
  @override
  final ScrcpyArgModel maxSize;
  @override
  final ScrcpyArgModel maxFps;
  @override
  final ScrcpyArgModel videoBitrate;
  @override
  final ScrcpyArgModel audioBitrate;

  @override
  String toString() {
    return 'ScrcpyArgsModel(turnScreenOff: $turnScreenOff, stayAwake: $stayAwake, showTouches: $showTouches, maxSize: $maxSize, maxFps: $maxFps, videoBitrate: $videoBitrate, audioBitrate: $audioBitrate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyArgsModelImpl &&
            (identical(other.turnScreenOff, turnScreenOff) ||
                other.turnScreenOff == turnScreenOff) &&
            (identical(other.stayAwake, stayAwake) ||
                other.stayAwake == stayAwake) &&
            (identical(other.showTouches, showTouches) ||
                other.showTouches == showTouches) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.maxFps, maxFps) || other.maxFps == maxFps) &&
            (identical(other.videoBitrate, videoBitrate) ||
                other.videoBitrate == videoBitrate) &&
            (identical(other.audioBitrate, audioBitrate) ||
                other.audioBitrate == audioBitrate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, turnScreenOff, stayAwake,
      showTouches, maxSize, maxFps, videoBitrate, audioBitrate);

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyArgsModelImplCopyWith<_$ScrcpyArgsModelImpl> get copyWith =>
      __$$ScrcpyArgsModelImplCopyWithImpl<_$ScrcpyArgsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScrcpyArgsModelImplToJson(
      this,
    );
  }
}

abstract class _ScrcpyArgsModel extends ScrcpyArgsModel {
  const factory _ScrcpyArgsModel(
      {required final ScrcpyArgModel turnScreenOff,
      required final ScrcpyArgModel stayAwake,
      required final ScrcpyArgModel showTouches,
      required final ScrcpyArgModel maxSize,
      required final ScrcpyArgModel maxFps,
      required final ScrcpyArgModel videoBitrate,
      required final ScrcpyArgModel audioBitrate}) = _$ScrcpyArgsModelImpl;
  const _ScrcpyArgsModel._() : super._();

  factory _ScrcpyArgsModel.fromJson(Map<String, dynamic> json) =
      _$ScrcpyArgsModelImpl.fromJson;

  @override
  ScrcpyArgModel get turnScreenOff;
  @override
  ScrcpyArgModel get stayAwake;
  @override
  ScrcpyArgModel get showTouches;
  @override
  ScrcpyArgModel get maxSize;
  @override
  ScrcpyArgModel get maxFps;
  @override
  ScrcpyArgModel get videoBitrate;
  @override
  ScrcpyArgModel get audioBitrate;

  /// Create a copy of ScrcpyArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyArgsModelImplCopyWith<_$ScrcpyArgsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
