import '../../domain/entities/record_answer.dart';
import '../../domain/repositories/record_answer_repository.dart';
import '../datasources/record_answer_local_data_source.dart';
import '../models/record_answer_model.dart';

class RecordAnswerRepositoryImpl implements RecordAnswerRepository {
  final RecordAnswerLocalDataSource localDataSource;

  RecordAnswerRepositoryImpl(this.localDataSource);

  @override
  Future<void> addRecord(RecordAnswer answer) {
    final model = RecordAnswerModel(
      questionId: answer.questionId,
      language: answer.language,
      answer: answer.answer,
      isCorrect: answer.isCorrect,
      time: answer.time,
    );

    return localDataSource.recordAnswer(model);
  }

  @override
  Future<List<RecordAnswer>> getRecords() {
    return localDataSource.getAnswers();
  }

  @override
  Future<void> updateRecord(int id, RecordAnswer answer) {
    final model = RecordAnswerModel(
      questionId: answer.questionId,
      language: answer.language,
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
