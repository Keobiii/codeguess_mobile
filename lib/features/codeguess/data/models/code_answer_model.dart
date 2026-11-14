import 'package:codeguess/features/codeguess/domain/entities/code_answer.dart';

class CodeAnswerModel extends CodeAnswer {
  CodeAnswerModel({
    required super.questionId,
    required super.answer,
    required super.isCorrect,
    required super.time,
  });

  factory CodeAnswerModel.fromMap(Map<String, dynamic> map) {
    return CodeAnswerModel(
      questionId: map['question_id'] as int,
      answer: map['answer'] as String,
      isCorrect: map['isCorrect'] as int,
      time: map['time'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {'question_id': questionId, 'answer': answer, 'time': time};
  }
}
