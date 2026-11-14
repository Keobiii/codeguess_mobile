import 'package:codeguess/features/codeguess/domain/entities/code_answer.dart';

abstract class CodeAnswerRepository {
  Future<void> addRecord(CodeAnswer answer);
  Future<List<CodeAnswer>> getAnswers();
  Future<void> updateRecord(int id, CodeAnswer answer);
  Future<void> deleteAnswer(int id);
}
