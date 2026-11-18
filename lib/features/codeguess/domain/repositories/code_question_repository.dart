import '../entities/code_question.dart';

abstract class CodeQuestionRepository {
  List<CodeQuestion> getQuestions(String language);
}
