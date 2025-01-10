// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  @JsonKey(name: 'sprites')
  PokemonImage get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Pokemon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call({@JsonKey(name: 'sprites') PokemonImage image, String name});

  $PokemonImageCopyWith<$Res> get image;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PokemonImage,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonImageCopyWith<$Res> get image {
    return $PokemonImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'sprites') PokemonImage image, String name});

  @override
  $PokemonImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
  }) {
    return _then(_$PokemonImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PokemonImage,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImpl extends _Pokemon {
  const _$PokemonImpl(
      {@JsonKey(name: 'sprites') required this.image, required this.name})
      : super._();

  factory _$PokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImplFromJson(json);

  @override
  @JsonKey(name: 'sprites')
  final PokemonImage image;
  @override
  final String name;

  @override
  String toString() {
    return 'Pokemon(image: $image, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name);

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImplToJson(
      this,
    );
  }
}

abstract class _Pokemon extends Pokemon {
  const factory _Pokemon(
      {@JsonKey(name: 'sprites') required final PokemonImage image,
      required final String name}) = _$PokemonImpl;
  const _Pokemon._() : super._();

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$PokemonImpl.fromJson;

  @override
  @JsonKey(name: 'sprites')
  PokemonImage get image;
  @override
  String get name;

  /// Create a copy of Pokemon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonImage _$PokemonImageFromJson(Map<String, dynamic> json) {
  return _PokemonImage.fromJson(json);
}

/// @nodoc
mixin _$PokemonImage {
  String get front_default => throw _privateConstructorUsedError;
  String get back_default => throw _privateConstructorUsedError;

  /// Serializes this PokemonImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonImageCopyWith<PokemonImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonImageCopyWith<$Res> {
  factory $PokemonImageCopyWith(
          PokemonImage value, $Res Function(PokemonImage) then) =
      _$PokemonImageCopyWithImpl<$Res, PokemonImage>;
  @useResult
  $Res call({String front_default, String back_default});
}

/// @nodoc
class _$PokemonImageCopyWithImpl<$Res, $Val extends PokemonImage>
    implements $PokemonImageCopyWith<$Res> {
  _$PokemonImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front_default = null,
    Object? back_default = null,
  }) {
    return _then(_value.copyWith(
      front_default: null == front_default
          ? _value.front_default
          : front_default // ignore: cast_nullable_to_non_nullable
              as String,
      back_default: null == back_default
          ? _value.back_default
          : back_default // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonImageImplCopyWith<$Res>
    implements $PokemonImageCopyWith<$Res> {
  factory _$$PokemonImageImplCopyWith(
          _$PokemonImageImpl value, $Res Function(_$PokemonImageImpl) then) =
      __$$PokemonImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String front_default, String back_default});
}

/// @nodoc
class __$$PokemonImageImplCopyWithImpl<$Res>
    extends _$PokemonImageCopyWithImpl<$Res, _$PokemonImageImpl>
    implements _$$PokemonImageImplCopyWith<$Res> {
  __$$PokemonImageImplCopyWithImpl(
      _$PokemonImageImpl _value, $Res Function(_$PokemonImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front_default = null,
    Object? back_default = null,
  }) {
    return _then(_$PokemonImageImpl(
      front_default: null == front_default
          ? _value.front_default
          : front_default // ignore: cast_nullable_to_non_nullable
              as String,
      back_default: null == back_default
          ? _value.back_default
          : back_default // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImageImpl extends _PokemonImage {
  const _$PokemonImageImpl(
      {required this.front_default, required this.back_default})
      : super._();

  factory _$PokemonImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImageImplFromJson(json);

  @override
  final String front_default;
  @override
  final String back_default;

  @override
  String toString() {
    return 'PokemonImage(front_default: $front_default, back_default: $back_default)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImageImpl &&
            (identical(other.front_default, front_default) ||
                other.front_default == front_default) &&
            (identical(other.back_default, back_default) ||
                other.back_default == back_default));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, front_default, back_default);

  /// Create a copy of PokemonImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImageImplCopyWith<_$PokemonImageImpl> get copyWith =>
      __$$PokemonImageImplCopyWithImpl<_$PokemonImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImageImplToJson(
      this,
    );
  }
}

abstract class _PokemonImage extends PokemonImage {
  const factory _PokemonImage(
      {required final String front_default,
      required final String back_default}) = _$PokemonImageImpl;
  const _PokemonImage._() : super._();

  factory _PokemonImage.fromJson(Map<String, dynamic> json) =
      _$PokemonImageImpl.fromJson;

  @override
  String get front_default;
  @override
  String get back_default;

  /// Create a copy of PokemonImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonImageImplCopyWith<_$PokemonImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
