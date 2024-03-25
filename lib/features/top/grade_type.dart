enum GradeType {
  gradeOne('1級までの問題', '1'),
  gradeTwo('2級までの問題', '2'),
  gradeThird('3級までの問題', '3'),
  ;

  const GradeType(
    this.gradeTitle,
    this.gradeNumber,
  );
  final String gradeTitle;
  final String gradeNumber;
}
