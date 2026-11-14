import 'package:codeguess/features/codeguess/domain/entities/code_question.dart';

abstract class CodeQuestionRepository {
  List<CodeQuestion> getQuestions();
}
