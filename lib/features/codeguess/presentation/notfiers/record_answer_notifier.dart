import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/record_answer.dart';
import '../providers/record_answer_providers.dart';

final recordAnswersProvider =
    AsyncNotifierProvider<RecordAnswerNotifier, List<RecordAnswer>>(
      RecordAnswerNotifier.new,
    );

class RecordAnswerNotifier extends AsyncNotifier<List<RecordAnswer>> {
  @override
  Future<List<RecordAnswer>> build() async {
    final getRecords = ref.watch(getRecordsProvider);

    return await getRecords.call();
  }

  Future<void> addRecord(RecordAnswer answer) async {
    final addRecord = ref.read(addRecordProvider);

    await addRecord.call(answer);

    final records = await ref.read(getRecordsProvider).call();

    state = AsyncData(records);
  }
}
