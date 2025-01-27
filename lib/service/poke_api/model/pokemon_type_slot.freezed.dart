// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTypeSlot _$PokemonTypeSlotFromJson(Map<String, dynamic> json) {
  return _PokemonTypeSlot.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeSlot {
  int get slot => throw _privateConstructorUsedError;
  PokemonType get type => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeSlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeSlotCopyWith<PokemonTypeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeSlotCopyWith<$Res> {
  factory $PokemonTypeSlotCopyWith(
          PokemonTypeSlot value, $Res Function(PokemonTypeSlot) then) =
      _$PokemonTypeSlotCopyWithImpl<$Res, PokemonTypeSlot>;
  @useResult
  $Res call({int slot, PokemonType type});

  $PokemonTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeSlotCopyWithImpl<$Res, $Val extends PokemonTypeSlot>
    implements $PokemonTypeSlotCopyWith<$Res> {
  _$PokemonTypeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonType,
    ) as $Val);
  }

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonTypeCopyWith<$Res> get type {
    return $PokemonTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeSlotImplCopyWith<$Res>
    implements $PokemonTypeSlotCopyWith<$Res> {
  factory _$$PokemonTypeSlotImplCopyWith(_$PokemonTypeSlotImpl value,
          $Res Function(_$PokemonTypeSlotImpl) then) =
      __$$PokemonTypeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, PokemonType type});

  @override
  $PokemonTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeSlotImplCopyWithImpl<$Res>
    extends _$PokemonTypeSlotCopyWithImpl<$Res, _$PokemonTypeSlotImpl>
    implements _$$PokemonTypeSlotImplCopyWith<$Res> {
  __$$PokemonTypeSlotImplCopyWithImpl(
      _$PokemonTypeSlotImpl _value, $Res Function(_$PokemonTypeSlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeSlotImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeSlotImpl extends _PokemonTypeSlot {
  const _$PokemonTypeSlotImpl({required this.slot, required this.type})
      : super._();

  factory _$PokemonTypeSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeSlotImplFromJson(json);

  @override
  final int slot;
  @override
  final PokemonType type;

  @override
  String toString() {
    return 'PokemonTypeSlot(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeSlotImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeSlotImplCopyWith<_$PokemonTypeSlotImpl> get copyWith =>
      __$$PokemonTypeSlotImplCopyWithImpl<_$PokemonTypeSlotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeSlotImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeSlot extends PokemonTypeSlot {
  const factory _PokemonTypeSlot(
      {required final int slot,
      required final PokemonType type}) = _$PokemonTypeSlotImpl;
  const _PokemonTypeSlot._() : super._();

  factory _PokemonTypeSlot.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeSlotImpl.fromJson;

  @override
  int get slot;
  @override
  PokemonType get type;

  /// Create a copy of PokemonTypeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeSlotImplCopyWith<_$PokemonTypeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
