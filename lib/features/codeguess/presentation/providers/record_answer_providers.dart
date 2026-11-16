import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:codeguess/core/database/database_helper.dart';

import '../../data/datasources/record_answer_local_data_source.dart';

import '../../data/repositories/code_answer_repository_impl.dart';
import '../../domain/repositories/record_answer_repository.dart';

import '../../domain/usecases/add_record.dart';
import '../../domain/usecases/get_records.dart';
import '../../domain/usecases/update_record.dart';
import '../../domain/usecases/delete_record.dart';

// Database
final databaseHelperProvider = Provider<DatabaseHelper>((ref) {
  return DatabaseHelper.instance;
});

// Local Data Source
final recordAnswerLocalDataSourceProvider =
    Provider<RecordAnswerLocalDataSource>((ref) {
      return RecordAnswerLocalDataSource(ref.watch(databaseHelperProvider));
    });

// Repository
final recordAnswerRepositoryProvider = Provider<RecordAnswerRepository>((ref) {
  return RecordAnswerRepositoryImpl(
    ref.watch(recordAnswerLocalDataSourceProvider),
  );
});

// Use Cases
final addRecordProvider = Provider<AddRecord>((ref) {
  return AddRecord(ref.watch(recordAnswerRepositoryProvider));
});

final getRecordsProvider = Provider<GetRecords>((ref) {
  return GetRecords(ref.watch(recordAnswerRepositoryProvider));
});

final updateRecordProvider = Provider<UpdateRecord>((ref) {
  return UpdateRecord(ref.watch(recordAnswerRepositoryProvider));
});

final deleteRecordProvider = Provider<DeleteRecord>((ref) {
  return DeleteRecord(ref.watch(recordAnswerRepositoryProvider));
});
