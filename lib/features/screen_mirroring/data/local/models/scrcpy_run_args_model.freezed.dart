// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrcpy_run_args_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScrcpyRunArgsModel {
  String get serial => throw _privateConstructorUsedError;
  int get videoBitrate => throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyRunArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyRunArgsModelCopyWith<ScrcpyRunArgsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyRunArgsModelCopyWith<$Res> {
  factory $ScrcpyRunArgsModelCopyWith(
          ScrcpyRunArgsModel value, $Res Function(ScrcpyRunArgsModel) then) =
      _$ScrcpyRunArgsModelCopyWithImpl<$Res, ScrcpyRunArgsModel>;
  @useResult
  $Res call({String serial, int videoBitrate});
}

/// @nodoc
class _$ScrcpyRunArgsModelCopyWithImpl<$Res, $Val extends ScrcpyRunArgsModel>
    implements $ScrcpyRunArgsModelCopyWith<$Res> {
  _$ScrcpyRunArgsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyRunArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? videoBitrate = null,
  }) {
    return _then(_value.copyWith(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      videoBitrate: null == videoBitrate
          ? _value.videoBitrate
          : videoBitrate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrcpyRunArgsModelImplCopyWith<$Res>
    implements $ScrcpyRunArgsModelCopyWith<$Res> {
  factory _$$ScrcpyRunArgsModelImplCopyWith(_$ScrcpyRunArgsModelImpl value,
          $Res Function(_$ScrcpyRunArgsModelImpl) then) =
      __$$ScrcpyRunArgsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String serial, int videoBitrate});
}

/// @nodoc
class __$$ScrcpyRunArgsModelImplCopyWithImpl<$Res>
    extends _$ScrcpyRunArgsModelCopyWithImpl<$Res, _$ScrcpyRunArgsModelImpl>
    implements _$$ScrcpyRunArgsModelImplCopyWith<$Res> {
  __$$ScrcpyRunArgsModelImplCopyWithImpl(_$ScrcpyRunArgsModelImpl _value,
      $Res Function(_$ScrcpyRunArgsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyRunArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? videoBitrate = null,
  }) {
    return _then(_$ScrcpyRunArgsModelImpl(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      videoBitrate: null == videoBitrate
          ? _value.videoBitrate
          : videoBitrate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScrcpyRunArgsModelImpl extends _ScrcpyRunArgsModel {
  const _$ScrcpyRunArgsModelImpl(
      {required this.serial, required this.videoBitrate})
      : super._();

  @override
  final String serial;
  @override
  final int videoBitrate;

  @override
  String toString() {
    return 'ScrcpyRunArgsModel(serial: $serial, videoBitrate: $videoBitrate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyRunArgsModelImpl &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.videoBitrate, videoBitrate) ||
                other.videoBitrate == videoBitrate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serial, videoBitrate);

  /// Create a copy of ScrcpyRunArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyRunArgsModelImplCopyWith<_$ScrcpyRunArgsModelImpl> get copyWith =>
      __$$ScrcpyRunArgsModelImplCopyWithImpl<_$ScrcpyRunArgsModelImpl>(
          this, _$identity);
}

abstract class _ScrcpyRunArgsModel extends ScrcpyRunArgsModel {
  const factory _ScrcpyRunArgsModel(
      {required final String serial,
      required final int videoBitrate}) = _$ScrcpyRunArgsModelImpl;
  const _ScrcpyRunArgsModel._() : super._();

  @override
  String get serial;
  @override
  int get videoBitrate;

  /// Create a copy of ScrcpyRunArgsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyRunArgsModelImplCopyWith<_$ScrcpyRunArgsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
