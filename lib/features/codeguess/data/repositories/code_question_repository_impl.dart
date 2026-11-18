import 'package:codeguess/features/codeguess/data/datasources/code_question_local_data_source.dart';
import 'package:codeguess/features/codeguess/domain/entities/code_question.dart';
import 'package:codeguess/features/codeguess/domain/repositories/code_question_repository.dart';

class CodeQuestionRepositoryImpl implements CodeQuestionRepository {
  final CodeQuestionLocalDataSource localDataSource;

  CodeQuestionRepositoryImpl(this.localDataSource);

  @override
  List<CodeQuestion> getQuestions(String language) {
    return localDataSource.getQuestions(language);
  }
}
