import 'package:codeguess/features/codeguess/domain/entities/record_answer.dart';
import 'package:codeguess/features/codeguess/domain/repositories/record_answer_repository.dart';

class AddRecord {
  final RecordAnswerRepository repository;

  AddRecord(this.repository);

  Future<void> call(RecordAnswer answer) {
    return repository.addRecord(answer);
  }
}
