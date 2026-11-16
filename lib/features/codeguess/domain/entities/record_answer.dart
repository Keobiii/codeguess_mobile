class RecordAnswer {
  final int questionId;
  final String answer;
  final int isCorrect;
  final int time;

  const RecordAnswer({
    required this.questionId,
    required this.answer,
    required this.isCorrect,
    required this.time,
  });
}
