class RecordAnswer {
  final int questionId;
  final String language;
  final String answer;
  final int isCorrect;
  final int time;

  const RecordAnswer({
    required this.questionId,
    required this.language,
    required this.answer,
    required this.isCorrect,
    required this.time,
  });
}
