// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scrcpy_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScrcpyDependencyInfoModel {
  String get name => throw _privateConstructorUsedError;
  String get compiledVersion => throw _privateConstructorUsedError;
  String get linkedVersion => throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyDependencyInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyDependencyInfoModelCopyWith<ScrcpyDependencyInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyDependencyInfoModelCopyWith<$Res> {
  factory $ScrcpyDependencyInfoModelCopyWith(ScrcpyDependencyInfoModel value,
          $Res Function(ScrcpyDependencyInfoModel) then) =
      _$ScrcpyDependencyInfoModelCopyWithImpl<$Res, ScrcpyDependencyInfoModel>;
  @useResult
  $Res call({String name, String compiledVersion, String linkedVersion});
}

/// @nodoc
class _$ScrcpyDependencyInfoModelCopyWithImpl<$Res,
        $Val extends ScrcpyDependencyInfoModel>
    implements $ScrcpyDependencyInfoModelCopyWith<$Res> {
  _$ScrcpyDependencyInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyDependencyInfoModel
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
abstract class _$$ScrcpyDependencyInfoModelImplCopyWith<$Res>
    implements $ScrcpyDependencyInfoModelCopyWith<$Res> {
  factory _$$ScrcpyDependencyInfoModelImplCopyWith(
          _$ScrcpyDependencyInfoModelImpl value,
          $Res Function(_$ScrcpyDependencyInfoModelImpl) then) =
      __$$ScrcpyDependencyInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String compiledVersion, String linkedVersion});
}

/// @nodoc
class __$$ScrcpyDependencyInfoModelImplCopyWithImpl<$Res>
    extends _$ScrcpyDependencyInfoModelCopyWithImpl<$Res,
        _$ScrcpyDependencyInfoModelImpl>
    implements _$$ScrcpyDependencyInfoModelImplCopyWith<$Res> {
  __$$ScrcpyDependencyInfoModelImplCopyWithImpl(
      _$ScrcpyDependencyInfoModelImpl _value,
      $Res Function(_$ScrcpyDependencyInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyDependencyInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? compiledVersion = null,
    Object? linkedVersion = null,
  }) {
    return _then(_$ScrcpyDependencyInfoModelImpl(
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

class _$ScrcpyDependencyInfoModelImpl implements _ScrcpyDependencyInfoModel {
  const _$ScrcpyDependencyInfoModelImpl(
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
    return 'ScrcpyDependencyInfoModel(name: $name, compiledVersion: $compiledVersion, linkedVersion: $linkedVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyDependencyInfoModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.compiledVersion, compiledVersion) ||
                other.compiledVersion == compiledVersion) &&
            (identical(other.linkedVersion, linkedVersion) ||
                other.linkedVersion == linkedVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, compiledVersion, linkedVersion);

  /// Create a copy of ScrcpyDependencyInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyDependencyInfoModelImplCopyWith<_$ScrcpyDependencyInfoModelImpl>
      get copyWith => __$$ScrcpyDependencyInfoModelImplCopyWithImpl<
          _$ScrcpyDependencyInfoModelImpl>(this, _$identity);
}

abstract class _ScrcpyDependencyInfoModel implements ScrcpyDependencyInfoModel {
  const factory _ScrcpyDependencyInfoModel(
      {required final String name,
      required final String compiledVersion,
      required final String linkedVersion}) = _$ScrcpyDependencyInfoModelImpl;

  @override
  String get name;
  @override
  String get compiledVersion;
  @override
  String get linkedVersion;

  /// Create a copy of ScrcpyDependencyInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyDependencyInfoModelImplCopyWith<_$ScrcpyDependencyInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScrcpyInfoModel {
  String get version => throw _privateConstructorUsedError;
  List<ScrcpyDependencyInfoModel> get dependencies =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScrcpyInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScrcpyInfoModelCopyWith<ScrcpyInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrcpyInfoModelCopyWith<$Res> {
  factory $ScrcpyInfoModelCopyWith(
          ScrcpyInfoModel value, $Res Function(ScrcpyInfoModel) then) =
      _$ScrcpyInfoModelCopyWithImpl<$Res, ScrcpyInfoModel>;
  @useResult
  $Res call({String version, List<ScrcpyDependencyInfoModel> dependencies});
}

/// @nodoc
class _$ScrcpyInfoModelCopyWithImpl<$Res, $Val extends ScrcpyInfoModel>
    implements $ScrcpyInfoModelCopyWith<$Res> {
  _$ScrcpyInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScrcpyInfoModel
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
              as List<ScrcpyDependencyInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrcpyInfoModelImplCopyWith<$Res>
    implements $ScrcpyInfoModelCopyWith<$Res> {
  factory _$$ScrcpyInfoModelImplCopyWith(_$ScrcpyInfoModelImpl value,
          $Res Function(_$ScrcpyInfoModelImpl) then) =
      __$$ScrcpyInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, List<ScrcpyDependencyInfoModel> dependencies});
}

/// @nodoc
class __$$ScrcpyInfoModelImplCopyWithImpl<$Res>
    extends _$ScrcpyInfoModelCopyWithImpl<$Res, _$ScrcpyInfoModelImpl>
    implements _$$ScrcpyInfoModelImplCopyWith<$Res> {
  __$$ScrcpyInfoModelImplCopyWithImpl(
      _$ScrcpyInfoModelImpl _value, $Res Function(_$ScrcpyInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScrcpyInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? dependencies = null,
  }) {
    return _then(_$ScrcpyInfoModelImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<ScrcpyDependencyInfoModel>,
    ));
  }
}

/// @nodoc

class _$ScrcpyInfoModelImpl implements _ScrcpyInfoModel {
  const _$ScrcpyInfoModelImpl(
      {required this.version,
      required final List<ScrcpyDependencyInfoModel> dependencies})
      : _dependencies = dependencies;

  @override
  final String version;
  final List<ScrcpyDependencyInfoModel> _dependencies;
  @override
  List<ScrcpyDependencyInfoModel> get dependencies {
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependencies);
  }

  @override
  String toString() {
    return 'ScrcpyInfoModel(version: $version, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrcpyInfoModelImpl &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, version, const DeepCollectionEquality().hash(_dependencies));

  /// Create a copy of ScrcpyInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrcpyInfoModelImplCopyWith<_$ScrcpyInfoModelImpl> get copyWith =>
      __$$ScrcpyInfoModelImplCopyWithImpl<_$ScrcpyInfoModelImpl>(
          this, _$identity);
}

abstract class _ScrcpyInfoModel implements ScrcpyInfoModel {
  const factory _ScrcpyInfoModel(
          {required final String version,
          required final List<ScrcpyDependencyInfoModel> dependencies}) =
      _$ScrcpyInfoModelImpl;

  @override
  String get version;
  @override
  List<ScrcpyDependencyInfoModel> get dependencies;

  /// Create a copy of ScrcpyInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrcpyInfoModelImplCopyWith<_$ScrcpyInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
