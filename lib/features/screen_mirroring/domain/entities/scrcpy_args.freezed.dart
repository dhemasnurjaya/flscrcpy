// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrcpy_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScrcpyArg {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get paramName => throw _privateConstructorUsedError;
  String get paramValue => throw _privateConstructorUsedError;
  ScrcpyArgTypes get type => throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyArg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyArgCopyWith<ScrcpyArg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyArgCopyWith<$Res> {
  factory $ScrcpyArgCopyWith(ScrcpyArg value, $Res Function(ScrcpyArg) then) =
      _$ScrcpyArgCopyWithImpl<$Res, ScrcpyArg>;
  @useResult
  $Res call(
      {String name,
      String description,
      String paramName,
      String paramValue,
      ScrcpyArgTypes type});
}

/// @nodoc
class _$ScrcpyArgCopyWithImpl<$Res, $Val extends ScrcpyArg>
    implements $ScrcpyArgCopyWith<$Res> {
  _$ScrcpyArgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyArg
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
abstract class _$$ScrcpyArgImplCopyWith<$Res>
    implements $ScrcpyArgCopyWith<$Res> {
  factory _$$ScrcpyArgImplCopyWith(
          _$ScrcpyArgImpl value, $Res Function(_$ScrcpyArgImpl) then) =
      __$$ScrcpyArgImplCopyWithImpl<$Res>;
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
class __$$ScrcpyArgImplCopyWithImpl<$Res>
    extends _$ScrcpyArgCopyWithImpl<$Res, _$ScrcpyArgImpl>
    implements _$$ScrcpyArgImplCopyWith<$Res> {
  __$$ScrcpyArgImplCopyWithImpl(
      _$ScrcpyArgImpl _value, $Res Function(_$ScrcpyArgImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyArg
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
    return _then(_$ScrcpyArgImpl(
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

class _$ScrcpyArgImpl implements _ScrcpyArg {
  const _$ScrcpyArgImpl(
      {required this.name,
      required this.description,
      required this.paramName,
      required this.paramValue,
      required this.type});

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
    return 'ScrcpyArg(name: $name, description: $description, paramName: $paramName, paramValue: $paramValue, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyArgImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.paramName, paramName) ||
                other.paramName == paramName) &&
            (identical(other.paramValue, paramValue) ||
                other.paramValue == paramValue) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, paramName, paramValue, type);

  /// Create a copy of ScrcpyArg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyArgImplCopyWith<_$ScrcpyArgImpl> get copyWith =>
      __$$ScrcpyArgImplCopyWithImpl<_$ScrcpyArgImpl>(this, _$identity);
}

abstract class _ScrcpyArg implements ScrcpyArg {
  const factory _ScrcpyArg(
      {required final String name,
      required final String description,
      required final String paramName,
      required final String paramValue,
      required final ScrcpyArgTypes type}) = _$ScrcpyArgImpl;

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

  /// Create a copy of ScrcpyArg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyArgImplCopyWith<_$ScrcpyArgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScrcpyArgs {
  Map<ScrcpyArgNames, ScrcpyArg> get args => throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyArgsCopyWith<ScrcpyArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyArgsCopyWith<$Res> {
  factory $ScrcpyArgsCopyWith(
          ScrcpyArgs value, $Res Function(ScrcpyArgs) then) =
      _$ScrcpyArgsCopyWithImpl<$Res, ScrcpyArgs>;
  @useResult
  $Res call({Map<ScrcpyArgNames, ScrcpyArg> args});
}

/// @nodoc
class _$ScrcpyArgsCopyWithImpl<$Res, $Val extends ScrcpyArgs>
    implements $ScrcpyArgsCopyWith<$Res> {
  _$ScrcpyArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_value.copyWith(
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<ScrcpyArgNames, ScrcpyArg>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrcpyArgsImplCopyWith<$Res>
    implements $ScrcpyArgsCopyWith<$Res> {
  factory _$$ScrcpyArgsImplCopyWith(
          _$ScrcpyArgsImpl value, $Res Function(_$ScrcpyArgsImpl) then) =
      __$$ScrcpyArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<ScrcpyArgNames, ScrcpyArg> args});
}

/// @nodoc
class __$$ScrcpyArgsImplCopyWithImpl<$Res>
    extends _$ScrcpyArgsCopyWithImpl<$Res, _$ScrcpyArgsImpl>
    implements _$$ScrcpyArgsImplCopyWith<$Res> {
  __$$ScrcpyArgsImplCopyWithImpl(
      _$ScrcpyArgsImpl _value, $Res Function(_$ScrcpyArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
  }) {
    return _then(_$ScrcpyArgsImpl(
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<ScrcpyArgNames, ScrcpyArg>,
    ));
  }
}

/// @nodoc

class _$ScrcpyArgsImpl extends _ScrcpyArgs {
  const _$ScrcpyArgsImpl({required final Map<ScrcpyArgNames, ScrcpyArg> args})
      : _args = args,
        super._();

  final Map<ScrcpyArgNames, ScrcpyArg> _args;
  @override
  Map<ScrcpyArgNames, ScrcpyArg> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyArgsImpl &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_args));

  /// Create a copy of ScrcpyArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyArgsImplCopyWith<_$ScrcpyArgsImpl> get copyWith =>
      __$$ScrcpyArgsImplCopyWithImpl<_$ScrcpyArgsImpl>(this, _$identity);
}

abstract class _ScrcpyArgs extends ScrcpyArgs {
  const factory _ScrcpyArgs(
      {required final Map<ScrcpyArgNames, ScrcpyArg> args}) = _$ScrcpyArgsImpl;
  const _ScrcpyArgs._() : super._();

  @override
  Map<ScrcpyArgNames, ScrcpyArg> get args;

  /// Create a copy of ScrcpyArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyArgsImplCopyWith<_$ScrcpyArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
