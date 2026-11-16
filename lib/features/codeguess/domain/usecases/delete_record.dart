import 'package:codeguess/features/codeguess/domain/repositories/record_answer_repository.dart';

class DeleteRecord {
  final RecordAnswerRepository repository;

  DeleteRecord(this.repository);

  Future<void> call(int id) {
    return repository.deleteAnswer(id);
  }
}
