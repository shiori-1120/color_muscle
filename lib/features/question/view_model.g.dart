// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questionViewModelHash() => r'02e7255d120ed918f6627f1eade9a2622d6b2897';

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
  late final BuildContext context;
  late final questionNumber;
  late final QuestionType questionType;
  late final GradeType gradeType;

  FutureOr<QuestionState> build(
    BuildContext context,
    questionNumber,
    QuestionType questionType,
    GradeType gradeType,
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
    BuildContext context,
    questionNumber,
    QuestionType questionType,
    GradeType gradeType,
  ) {
    return QuestionViewModelProvider(
      context,
      questionNumber,
      questionType,
      gradeType,
    );
  }

  @visibleForOverriding
  @override
  QuestionViewModelProvider getProviderOverride(
    covariant QuestionViewModelProvider provider,
  ) {
    return call(
      provider.context,
      provider.questionNumber,
      provider.questionType,
      provider.gradeType,
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
    BuildContext context,
    questionNumber,
    QuestionType questionType,
    GradeType gradeType,
  ) : this._internal(
          () => QuestionViewModel()
            ..context = context
            ..questionNumber = questionNumber
            ..questionType = questionType
            ..gradeType = gradeType,
          from: questionViewModelProvider,
          name: r'questionViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$questionViewModelHash,
          dependencies: QuestionViewModelFamily._dependencies,
          allTransitiveDependencies:
              QuestionViewModelFamily._allTransitiveDependencies,
          context: context,
          questionNumber: questionNumber,
          questionType: questionType,
          gradeType: gradeType,
        );

  QuestionViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
    required this.questionNumber,
    required this.questionType,
    required this.gradeType,
  }) : super.internal();

  final BuildContext context;
  final questionNumber;
  final QuestionType questionType;
  final GradeType gradeType;

  @override
  FutureOr<QuestionState> runNotifierBuild(
    covariant QuestionViewModel notifier,
  ) {
    return notifier.build(
      context,
      questionNumber,
      questionType,
      gradeType,
    );
  }

  @override
  Override overrideWith(QuestionViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuestionViewModelProvider._internal(
        () => create()
          ..context = context
          ..questionNumber = questionNumber
          ..questionType = questionType
          ..gradeType = gradeType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
        questionNumber: questionNumber,
        questionType: questionType,
        gradeType: gradeType,
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
        other.context == context &&
        other.questionNumber == questionNumber &&
        other.questionType == questionType &&
        other.gradeType == gradeType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);
    hash = _SystemHash.combine(hash, questionNumber.hashCode);
    hash = _SystemHash.combine(hash, questionType.hashCode);
    hash = _SystemHash.combine(hash, gradeType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin QuestionViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<QuestionState> {
  /// The parameter `context` of this provider.
  BuildContext get context;

  /// The parameter `questionNumber` of this provider.
  get questionNumber;

  /// The parameter `questionType` of this provider.
  QuestionType get questionType;

  /// The parameter `gradeType` of this provider.
  GradeType get gradeType;
}

class _QuestionViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<QuestionViewModel,
        QuestionState> with QuestionViewModelRef {
  _QuestionViewModelProviderElement(super.provider);

  @override
  BuildContext get context => (origin as QuestionViewModelProvider).context;
  @override
  get questionNumber => (origin as QuestionViewModelProvider).questionNumber;
  @override
  QuestionType get questionType =>
      (origin as QuestionViewModelProvider).questionType;
  @override
  GradeType get gradeType => (origin as QuestionViewModelProvider).gradeType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
