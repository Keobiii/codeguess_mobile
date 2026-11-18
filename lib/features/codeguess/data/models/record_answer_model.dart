import 'package:codeguess/features/codeguess/domain/entities/record_answer.dart';

class RecordAnswerModel extends RecordAnswer {
  RecordAnswerModel({
    required super.questionId,
    required super.language,
    required super.answer,
    required super.isCorrect,
    required super.time,
  });

  factory RecordAnswerModel.fromMap(Map<String, dynamic> map) {
    return RecordAnswerModel(
      questionId: map['question_id'] as int,
      language: map['language'] as String,
      answer: map['answer'] as String,
      isCorrect: map['isCorrect'] as int,
      time: map['time'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'question_id': questionId,
      'language': language,
      'answer': answer,
      'isCorrect': isCorrect,
      'time': time,
    };
  }
}
