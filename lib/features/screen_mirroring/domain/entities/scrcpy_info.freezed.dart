// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrcpy_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScrcpyInfo {
  String get version => throw _privateConstructorUsedError;
  List<ScrcpyDependencyInfo> get dependencies =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyInfoCopyWith<ScrcpyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyInfoCopyWith<$Res> {
  factory $ScrcpyInfoCopyWith(
          ScrcpyInfo value, $Res Function(ScrcpyInfo) then) =
      _$ScrcpyInfoCopyWithImpl<$Res, ScrcpyInfo>;
  @useResult
  $Res call({String version, List<ScrcpyDependencyInfo> dependencies});
}

/// @nodoc
class _$ScrcpyInfoCopyWithImpl<$Res, $Val extends ScrcpyInfo>
    implements $ScrcpyInfoCopyWith<$Res> {
  _$ScrcpyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? dependencies = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<ScrcpyDependencyInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrcpyInfoImplCopyWith<$Res>
    implements $ScrcpyInfoCopyWith<$Res> {
  factory _$$ScrcpyInfoImplCopyWith(
          _$ScrcpyInfoImpl value, $Res Function(_$ScrcpyInfoImpl) then) =
      __$$ScrcpyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, List<ScrcpyDependencyInfo> dependencies});
}

/// @nodoc
class __$$ScrcpyInfoImplCopyWithImpl<$Res>
    extends _$ScrcpyInfoCopyWithImpl<$Res, _$ScrcpyInfoImpl>
    implements _$$ScrcpyInfoImplCopyWith<$Res> {
  __$$ScrcpyInfoImplCopyWithImpl(
      _$ScrcpyInfoImpl _value, $Res Function(_$ScrcpyInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? dependencies = null,
  }) {
    return _then(_$ScrcpyInfoImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<ScrcpyDependencyInfo>,
    ));
  }
}

/// @nodoc

class _$ScrcpyInfoImpl implements _ScrcpyInfo {
  const _$ScrcpyInfoImpl(
      {required this.version,
      required final List<ScrcpyDependencyInfo> dependencies})
      : _dependencies = dependencies;

  @override
  final String version;
  final List<ScrcpyDependencyInfo> _dependencies;
  @override
  List<ScrcpyDependencyInfo> get dependencies {
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependencies);
  }

  @override
  String toString() {
    return 'ScrcpyInfo(version: $version, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyInfoImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, version, const DeepCollectionEquality().hash(_dependencies));

  /// Create a copy of ScrcpyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyInfoImplCopyWith<_$ScrcpyInfoImpl> get copyWith =>
      __$$ScrcpyInfoImplCopyWithImpl<_$ScrcpyInfoImpl>(this, _$identity);
}

abstract class _ScrcpyInfo implements ScrcpyInfo {
  const factory _ScrcpyInfo(
          {required final String version,
          required final List<ScrcpyDependencyInfo> dependencies}) =
      _$ScrcpyInfoImpl;

  @override
  String get version;
  @override
  List<ScrcpyDependencyInfo> get dependencies;

  /// Create a copy of ScrcpyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyInfoImplCopyWith<_$ScrcpyInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScrcpyDependencyInfo {
  String get name => throw _privateConstructorUsedError;
  String get compiledVersion => throw _privateConstructorUsedError;
  String get linkedVersion => throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyDependencyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyDependencyInfoCopyWith<ScrcpyDependencyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyDependencyInfoCopyWith<$Res> {
  factory $ScrcpyDependencyInfoCopyWith(ScrcpyDependencyInfo value,
          $Res Function(ScrcpyDependencyInfo) then) =
      _$ScrcpyDependencyInfoCopyWithImpl<$Res, ScrcpyDependencyInfo>;
  @useResult
  $Res call({String name, String compiledVersion, String linkedVersion});
}

/// @nodoc
class _$ScrcpyDependencyInfoCopyWithImpl<$Res,
        $Val extends ScrcpyDependencyInfo>
    implements $ScrcpyDependencyInfoCopyWith<$Res> {
  _$ScrcpyDependencyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyDependencyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? compiledVersion = null,
    Object? linkedVersion = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      compiledVersion: null == compiledVersion
          ? _value.compiledVersion
          : compiledVersion // ignore: cast_nullable_to_non_nullable
              as String,
      linkedVersion: null == linkedVersion
          ? _value.linkedVersion
          : linkedVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrcpyDependencyInfoImplCopyWith<$Res>
    implements $ScrcpyDependencyInfoCopyWith<$Res> {
  factory _$$ScrcpyDependencyInfoImplCopyWith(_$ScrcpyDependencyInfoImpl value,
          $Res Function(_$ScrcpyDependencyInfoImpl) then) =
      __$$ScrcpyDependencyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String compiledVersion, String linkedVersion});
}

/// @nodoc
class __$$ScrcpyDependencyInfoImplCopyWithImpl<$Res>
    extends _$ScrcpyDependencyInfoCopyWithImpl<$Res, _$ScrcpyDependencyInfoImpl>
    implements _$$ScrcpyDependencyInfoImplCopyWith<$Res> {
  __$$ScrcpyDependencyInfoImplCopyWithImpl(_$ScrcpyDependencyInfoImpl _value,
      $Res Function(_$ScrcpyDependencyInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyDependencyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? compiledVersion = null,
    Object? linkedVersion = null,
  }) {
    return _then(_$ScrcpyDependencyInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      compiledVersion: null == compiledVersion
          ? _value.compiledVersion
          : compiledVersion // ignore: cast_nullable_to_non_nullable
              as String,
      linkedVersion: null == linkedVersion
          ? _value.linkedVersion
          : linkedVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScrcpyDependencyInfoImpl implements _ScrcpyDependencyInfo {
  const _$ScrcpyDependencyInfoImpl(
      {required this.name,
      required this.compiledVersion,
      required this.linkedVersion});

  @override
  final String name;
  @override
  final String compiledVersion;
  @override
  final String linkedVersion;

  @override
  String toString() {
    return 'ScrcpyDependencyInfo(name: $name, compiledVersion: $compiledVersion, linkedVersion: $linkedVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyDependencyInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.compiledVersion, compiledVersion) ||
                other.compiledVersion == compiledVersion) &&
            (identical(other.linkedVersion, linkedVersion) ||
                other.linkedVersion == linkedVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, compiledVersion, linkedVersion);

  /// Create a copy of ScrcpyDependencyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyDependencyInfoImplCopyWith<_$ScrcpyDependencyInfoImpl>
      get copyWith =>
          __$$ScrcpyDependencyInfoImplCopyWithImpl<_$ScrcpyDependencyInfoImpl>(
              this, _$identity);
}

abstract class _ScrcpyDependencyInfo implements ScrcpyDependencyInfo {
  const factory _ScrcpyDependencyInfo(
      {required final String name,
      required final String compiledVersion,
      required final String linkedVersion}) = _$ScrcpyDependencyInfoImpl;

  @override
  String get name;
  @override
  String get compiledVersion;
  @override
  String get linkedVersion;

  /// Create a copy of ScrcpyDependencyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyDependencyInfoImplCopyWith<_$ScrcpyDependencyInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
