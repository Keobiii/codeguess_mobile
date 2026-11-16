import 'package:codeguess/features/codeguess/domain/entities/record_answer.dart';

abstract class RecordAnswerRepository {
  Future<void> addRecord(RecordAnswer answer);
  Future<List<RecordAnswer>> getRecords();
  Future<void> updateRecord(int id, RecordAnswer answer);
  Future<void> deleteAnswer(int id);
}
