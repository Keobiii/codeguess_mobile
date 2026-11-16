import 'package:codeguess/core/database/database_helper.dart';
import 'package:codeguess/features/codeguess/data/models/record_answer_model.dart';

class RecordAnswerLocalDataSource {
  final DatabaseHelper databaseHelper;

  RecordAnswerLocalDataSource(this.databaseHelper);

  Future<void> recordAnswer(RecordAnswerModel answer) async {
    final db = await databaseHelper.database;

    await db.insert('codeguess_history', answer.toMap());
  }

  Future<List<RecordAnswerModel>> getAnswers() async {
    final db = await databaseHelper.database;

    final result = await db.query('codeguess_history', orderBy: 'time ASC');

    return result.map((map) => RecordAnswerModel.fromMap(map)).toList();
  }

  Future<void> updateAnswer(int id, RecordAnswerModel answer) async {
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
