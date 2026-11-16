import 'package:codeguess/features/codeguess/domain/entities/record_answer.dart';
import 'package:codeguess/features/codeguess/domain/repositories/record_answer_repository.dart';

class UpdateRecord {
  final RecordAnswerRepository repository;

  UpdateRecord(this.repository);

  Future<void> call(int id, RecordAnswer answer) {
    return repository.updateRecord(id, answer);
  }
}
