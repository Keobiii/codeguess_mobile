import 'package:codeguess/features/codeguess/domain/entities/record_answer.dart';
import 'package:codeguess/features/codeguess/domain/repositories/record_answer_repository.dart';

class GetRecords {
  final RecordAnswerRepository repository;

  GetRecords(this.repository);

  Future<List<RecordAnswer>> call() {
    return repository.getRecords();
  }
}
