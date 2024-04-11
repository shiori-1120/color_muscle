class SubQuizClass {
  final String id;
  final String explanation;
  final String quizStatement;

  SubQuizClass(
    this.id,
    this.explanation,
    this.quizStatement,
  );

  @override
  String toString() => '($id, $explanation,$quizStatement)';
}
