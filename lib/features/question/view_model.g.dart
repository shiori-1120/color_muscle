// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questionViewModelHash() => r'9f24aa9d85cab032ccc307b44e77b43e6b4a154b';

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

abstract class _$QuestionViewModel
    extends BuildlessAutoDisposeAsyncNotifier<QuestionState> {
  late final int index;
  late final List<ResultClass> results;

  FutureOr<QuestionState> build(
    int index,
    List<ResultClass> results,
  );
}

/// See also [QuestionViewModel].
@ProviderFor(QuestionViewModel)
const questionViewModelProvider = QuestionViewModelFamily();

/// See also [QuestionViewModel].
class QuestionViewModelFamily extends Family<AsyncValue<QuestionState>> {
  /// See also [QuestionViewModel].
  const QuestionViewModelFamily();

  /// See also [QuestionViewModel].
  QuestionViewModelProvider call(
    int index,
    List<ResultClass> results,
  ) {
    return QuestionViewModelProvider(
      index,
      results,
    );
  }

  @visibleForOverriding
  @override
  QuestionViewModelProvider getProviderOverride(
    covariant QuestionViewModelProvider provider,
  ) {
    return call(
      provider.index,
      provider.results,
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
  String? get name => r'questionViewModelProvider';
}

/// See also [QuestionViewModel].
class QuestionViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    QuestionViewModel, QuestionState> {
  /// See also [QuestionViewModel].
  QuestionViewModelProvider(
    int index,
    List<ResultClass> results,
  ) : this._internal(
          () => QuestionViewModel()
            ..index = index
            ..results = results,
          from: questionViewModelProvider,
          name: r'questionViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$questionViewModelHash,
          dependencies: QuestionViewModelFamily._dependencies,
          allTransitiveDependencies:
              QuestionViewModelFamily._allTransitiveDependencies,
          index: index,
          results: results,
        );

  QuestionViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.results,
  }) : super.internal();

  final int index;
  final List<ResultClass> results;

  @override
  FutureOr<QuestionState> runNotifierBuild(
    covariant QuestionViewModel notifier,
  ) {
    return notifier.build(
      index,
      results,
    );
  }

  @override
  Override overrideWith(QuestionViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuestionViewModelProvider._internal(
        () => create()
          ..index = index
          ..results = results,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
        results: results,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<QuestionViewModel, QuestionState>
      createElement() {
    return _QuestionViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuestionViewModelProvider &&
        other.index == index &&
        other.results == results;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, results.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin QuestionViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<QuestionState> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `results` of this provider.
  List<ResultClass> get results;
}

class _QuestionViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<QuestionViewModel,
        QuestionState> with QuestionViewModelRef {
  _QuestionViewModelProviderElement(super.provider);

  @override
  int get index => (origin as QuestionViewModelProvider).index;
  @override
  List<ResultClass> get results =>
      (origin as QuestionViewModelProvider).results;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
