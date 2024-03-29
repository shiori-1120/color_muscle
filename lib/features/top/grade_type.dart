enum GradeType {
  gradeOne('1級までの問題', '1', 1),
  gradeTwo('2級までの問題', '2', 2),
  gradeThird('3級までの問題', '3', 3),
  ;

  const GradeType(
    this.gradeTitle,
    this.gradeNumber,
    this.gradeIntNumber,
  );
  final String gradeTitle;
  final String gradeNumber;
  final int gradeIntNumber;
}
