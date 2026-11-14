import 'package:codeguess/features/codeguess/domain/entities/code_question.dart';

class CodeQuestionModel extends CodeQuestion {
  const CodeQuestionModel({
    required super.id,
    required super.question,
    required super.code,
    required super.language,
    required super.answer,
  });
}
