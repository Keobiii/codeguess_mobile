import 'package:codeguess/core/database/database_helper.dart';
import 'package:codeguess/features/codeguess/data/models/code_answer_model.dart';

class CodeAnswerLocalDataSource {
  final DatabaseHelper databaseHelper;

  CodeAnswerLocalDataSource(this.databaseHelper);

  Future<void> recordAnswer(CodeAnswerModel answer) async {
    final db = await databaseHelper.database;

    await db.insert('codeguess_history', answer.toMap());
  }

  Future<List<CodeAnswerModel>> getAnswers() async {
    final db = await databaseHelper.database;

    final result = await db.query('codeguess_history');

    return result.map((map) => CodeAnswerModel.fromMap(map)).toList();
  }

  Future<void> updateAnswer(int id, CodeAnswerModel answer) async {
    final db = await databaseHelper.database;

    await db.update(
      'codeguess_history',
      answer.toMap(),
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteAnswer(int id) async {
    final db = await databaseHelper.database;

    await db.delete('codeguess_history', where: 'id = ?', whereArgs: [id]);
  }
}
