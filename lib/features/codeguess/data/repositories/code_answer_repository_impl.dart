import '../../domain/entities/code_answer.dart';
import '../../domain/repositories/code_answer_repository.dart';
import '../datasources/code_answer_local_data_source.dart';
import '../models/code_answer_model.dart';

class CodeAnswerRepositoryImpl implements CodeAnswerRepository {
  final CodeAnswerLocalDataSource localDataSource;

  CodeAnswerRepositoryImpl(this.localDataSource);

  @override
  Future<void> addRecord(CodeAnswer answer) {
    final model = CodeAnswerModel(
      questionId: answer.questionId,
      answer: answer.answer,
      isCorrect: answer.isCorrect,
      time: answer.time,
    );

    return localDataSource.recordAnswer(model);
  }

  @override
  Future<List<CodeAnswer>> getAnswers() {
    return localDataSource.getAnswers();
  }

  @override
  Future<void> updateRecord(int id, CodeAnswer answer) {
    final model = CodeAnswerModel(
      questionId: answer.questionId,
      answer: answer.answer,
      isCorrect: answer.isCorrect,
      time: answer.time,
    );

    return localDataSource.updateAnswer(id, model);
  }

  @override
  Future<void> deleteAnswer(int id) {
    return localDataSource.deleteAnswer(id);
  }
}
