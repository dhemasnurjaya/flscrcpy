// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirroring_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MirroringStatus {
  String get serial => throw _privateConstructorUsedError;
  StreamShellStatus get shellStatus => throw _privateConstructorUsedError;
  List<String> get logs => throw _privateConstructorUsedError;

  /// Create a copy of MirroringStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MirroringStatusCopyWith<MirroringStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MirroringStatusCopyWith<$Res> {
  factory $MirroringStatusCopyWith(
          MirroringStatus value, $Res Function(MirroringStatus) then) =
      _$MirroringStatusCopyWithImpl<$Res, MirroringStatus>;
  @useResult
  $Res call({String serial, StreamShellStatus shellStatus, List<String> logs});
}

/// @nodoc
class _$MirroringStatusCopyWithImpl<$Res, $Val extends MirroringStatus>
    implements $MirroringStatusCopyWith<$Res> {
  _$MirroringStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MirroringStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? shellStatus = null,
    Object? logs = null,
  }) {
    return _then(_value.copyWith(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      shellStatus: null == shellStatus
          ? _value.shellStatus
          : shellStatus // ignore: cast_nullable_to_non_nullable
              as StreamShellStatus,
      logs: null == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MirroringStatusImplCopyWith<$Res>
    implements $MirroringStatusCopyWith<$Res> {
  factory _$$MirroringStatusImplCopyWith(_$MirroringStatusImpl value,
          $Res Function(_$MirroringStatusImpl) then) =
      __$$MirroringStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String serial, StreamShellStatus shellStatus, List<String> logs});
}

/// @nodoc
class __$$MirroringStatusImplCopyWithImpl<$Res>
    extends _$MirroringStatusCopyWithImpl<$Res, _$MirroringStatusImpl>
    implements _$$MirroringStatusImplCopyWith<$Res> {
  __$$MirroringStatusImplCopyWithImpl(
      _$MirroringStatusImpl _value, $Res Function(_$MirroringStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of MirroringStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? shellStatus = null,
    Object? logs = null,
  }) {
    return _then(_$MirroringStatusImpl(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      shellStatus: null == shellStatus
          ? _value.shellStatus
          : shellStatus // ignore: cast_nullable_to_non_nullable
              as StreamShellStatus,
      logs: null == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MirroringStatusImpl implements _MirroringStatus {
  const _$MirroringStatusImpl(
      {required this.serial,
      required this.shellStatus,
      required final List<String> logs})
      : _logs = logs;

  @override
  final String serial;
  @override
  final StreamShellStatus shellStatus;
  final List<String> _logs;
  @override
  List<String> get logs {
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logs);
  }

  @override
  String toString() {
    return 'MirroringStatus(serial: $serial, shellStatus: $shellStatus, logs: $logs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MirroringStatusImpl &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.shellStatus, shellStatus) ||
                other.shellStatus == shellStatus) &&
            const DeepCollectionEquality().equals(other._logs, _logs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serial, shellStatus,
      const DeepCollectionEquality().hash(_logs));

  /// Create a copy of MirroringStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MirroringStatusImplCopyWith<_$MirroringStatusImpl> get copyWith =>
      __$$MirroringStatusImplCopyWithImpl<_$MirroringStatusImpl>(
          this, _$identity);
}

abstract class _MirroringStatus implements MirroringStatus {
  const factory _MirroringStatus(
      {required final String serial,
      required final StreamShellStatus shellStatus,
      required final List<String> logs}) = _$MirroringStatusImpl;

  @override
  String get serial;
  @override
  StreamShellStatus get shellStatus;
  @override
  List<String> get logs;

  /// Create a copy of MirroringStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MirroringStatusImplCopyWith<_$MirroringStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
