// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonProviderHash() => r'e932899f1ce26a2681a6ae3a857e153ee102babd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [pokemonProvider].
@ProviderFor(pokemonProvider)
const pokemonProviderProvider = PokemonProviderFamily();

/// See also [pokemonProvider].
class PokemonProviderFamily extends Family<AsyncValue<Pokemon>> {
  /// See also [pokemonProvider].
  const PokemonProviderFamily();

  /// See also [pokemonProvider].
  PokemonProviderProvider call(
    String id,
  ) {
    return PokemonProviderProvider(
      id,
    );
  }

  @override
  PokemonProviderProvider getProviderOverride(
    covariant PokemonProviderProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonProviderProvider';
}

/// See also [pokemonProvider].
class PokemonProviderProvider extends AutoDisposeFutureProvider<Pokemon> {
  /// See also [pokemonProvider].
  PokemonProviderProvider(
    String id,
  ) : this._internal(
          (ref) => pokemonProvider(
            ref as PokemonProviderRef,
            id,
          ),
          from: pokemonProviderProvider,
          name: r'pokemonProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonProviderHash,
          dependencies: PokemonProviderFamily._dependencies,
          allTransitiveDependencies:
              PokemonProviderFamily._allTransitiveDependencies,
          id: id,
        );

  PokemonProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Pokemon> Function(PokemonProviderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonProviderProvider._internal(
        (ref) => create(ref as PokemonProviderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Pokemon> createElement() {
    return _PokemonProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonProviderProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PokemonProviderRef on AutoDisposeFutureProviderRef<Pokemon> {
  /// The parameter `id` of this provider.
  String get id;
}

class _PokemonProviderProviderElement
    extends AutoDisposeFutureProviderElement<Pokemon> with PokemonProviderRef {
  _PokemonProviderProviderElement(super.provider);

  @override
  String get id => (origin as PokemonProviderProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
