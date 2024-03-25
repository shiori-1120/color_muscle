enum QuestionType {
  colorToName('色 → 色の名前', 'colorCode', 'colorName'),
  nameToColor('色の名前 → 色', 'colorName', 'colorCode'),
  originToColor('由来 → 色の名前', 'origin', 'colorName'),
  ;

  const QuestionType(
    this.questionTitle,
    this.questionFormat,
    this.answerFormat,
  );

  final String questionTitle;
  final String questionFormat;
  final String answerFormat;
}
