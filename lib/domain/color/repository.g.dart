// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$colorFirestoreHash() => r'75ab2d7efa07520f50bac53459a295b788063d9f';

/// See also [colorFirestore].
@ProviderFor(colorFirestore)
final colorFirestoreProvider =
    Provider<CollectionReference<ColorClass>>.internal(
  colorFirestore,
  name: r'colorFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$colorFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ColorFirestoreRef = ProviderRef<CollectionReference<ColorClass>>;
String _$colorRepoHash() => r'da6070116cd35e79f999f0a14c7fb637ac6673be';

/// See also [ColorRepo].
@ProviderFor(ColorRepo)
final colorRepoProvider = NotifierProvider<ColorRepo, void>.internal(
  ColorRepo.new,
  name: r'colorRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$colorRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ColorRepo = Notifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
