// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_cry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonCry _$PokemonCryFromJson(Map<String, dynamic> json) {
  return _PokemonCry.fromJson(json);
}

/// @nodoc
mixin _$PokemonCry {
  String get legacy => throw _privateConstructorUsedError;
  String get latest => throw _privateConstructorUsedError;

  /// Serializes this PokemonCry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonCry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonCryCopyWith<PokemonCry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCryCopyWith<$Res> {
  factory $PokemonCryCopyWith(
          PokemonCry value, $Res Function(PokemonCry) then) =
      _$PokemonCryCopyWithImpl<$Res, PokemonCry>;
  @useResult
  $Res call({String legacy, String latest});
}

/// @nodoc
class _$PokemonCryCopyWithImpl<$Res, $Val extends PokemonCry>
    implements $PokemonCryCopyWith<$Res> {
  _$PokemonCryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonCry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legacy = null,
    Object? latest = null,
  }) {
    return _then(_value.copyWith(
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonCryImplCopyWith<$Res>
    implements $PokemonCryCopyWith<$Res> {
  factory _$$PokemonCryImplCopyWith(
          _$PokemonCryImpl value, $Res Function(_$PokemonCryImpl) then) =
      __$$PokemonCryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String legacy, String latest});
}

/// @nodoc
class __$$PokemonCryImplCopyWithImpl<$Res>
    extends _$PokemonCryCopyWithImpl<$Res, _$PokemonCryImpl>
    implements _$$PokemonCryImplCopyWith<$Res> {
  __$$PokemonCryImplCopyWithImpl(
      _$PokemonCryImpl _value, $Res Function(_$PokemonCryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonCry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legacy = null,
    Object? latest = null,
  }) {
    return _then(_$PokemonCryImpl(
      legacy: null == legacy
          ? _value.legacy
          : legacy // ignore: cast_nullable_to_non_nullable
              as String,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonCryImpl extends _PokemonCry {
  const _$PokemonCryImpl({required this.legacy, required this.latest})
      : super._();

  factory _$PokemonCryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonCryImplFromJson(json);

  @override
  final String legacy;
  @override
  final String latest;

  @override
  String toString() {
    return 'PokemonCry(legacy: $legacy, latest: $latest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonCryImpl &&
            (identical(other.legacy, legacy) || other.legacy == legacy) &&
            (identical(other.latest, latest) || other.latest == latest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, legacy, latest);

  /// Create a copy of PokemonCry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonCryImplCopyWith<_$PokemonCryImpl> get copyWith =>
      __$$PokemonCryImplCopyWithImpl<_$PokemonCryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonCryImplToJson(
      this,
    );
  }
}

abstract class _PokemonCry extends PokemonCry {
  const factory _PokemonCry(
      {required final String legacy,
      required final String latest}) = _$PokemonCryImpl;
  const _PokemonCry._() : super._();

  factory _PokemonCry.fromJson(Map<String, dynamic> json) =
      _$PokemonCryImpl.fromJson;

  @override
  String get legacy;
  @override
  String get latest;

  /// Create a copy of PokemonCry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonCryImplCopyWith<_$PokemonCryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
