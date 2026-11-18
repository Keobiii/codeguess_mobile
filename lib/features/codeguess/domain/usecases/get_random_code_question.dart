import 'dart:math';

import 'package:codeguess/features/codeguess/domain/entities/code_question.dart';
import 'package:codeguess/features/codeguess/domain/repositories/code_question_repository.dart';

class GetRandomCodeQuestion {
  final CodeQuestionRepository repository;

  GetRandomCodeQuestion(this.repository);

  CodeQuestion? call(String language) {
    final questions = repository.getQuestions(language);

    if (questions.isEmpty) return null;

    final randomIndex = Random().nextInt(questions.length);

    return questions[randomIndex];
  }
}
