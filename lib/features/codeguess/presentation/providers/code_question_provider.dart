import 'package:codeguess/features/codeguess/data/repositories/code_question_repository_impl.dart';
import 'package:codeguess/features/codeguess/domain/entities/code_question.dart';
import 'package:codeguess/features/codeguess/domain/repositories/code_question_repository.dart';
import 'package:codeguess/features/codeguess/domain/usecases/get_code_questions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/code_question_local_data_source.dart';
import '../../domain/usecases/get_random_code_question.dart';

// Local Data Source
final codeQuestionLocalDataSourceProvider =
    Provider<CodeQuestionLocalDataSource>((ref) {
      return CodeQuestionLocalDataSource();
    });

// Reposritory
final codeQuestionRepositoryProvider = Provider<CodeQuestionRepository>((ref) {
  return CodeQuestionRepositoryImpl(
    ref.watch(codeQuestionLocalDataSourceProvider),
  );
});

// Use Case
final getCodeQuestionsProvider = Provider<GetCodeQuestions>((ref) {
  return GetCodeQuestions(ref.watch(codeQuestionRepositoryProvider));
});

final getRandomCodeQuestionProvider = Provider<GetRandomCodeQuestion>((ref) {
  return GetRandomCodeQuestion(ref.watch(codeQuestionRepositoryProvider));
});

// Questions
final codeQuestionsProvider = Provider<List<CodeQuestion>>((ref) {
  return ref.watch(getCodeQuestionsProvider).call();
});

final randomCodeQuestionProvider = Provider<CodeQuestion?>((ref) {
  return ref.watch(getRandomCodeQuestionProvider).call();
});
