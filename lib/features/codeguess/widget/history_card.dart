import 'package:codeguess/features/codeguess/domain/entities/record_answer.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class HistoryCard extends StatelessWidget {
  final RecordAnswer recordAnswer;
  const HistoryCard({super.key, required this.recordAnswer});

  @override
  Widget build(BuildContext context) {
    String formatMilliseconds(int milliseconds) {
      final minutes = (milliseconds ~/ 60000).toString().padLeft(2, '0');
      final seconds = ((milliseconds ~/ 1000) % 60).toString().padLeft(2, '0');
      final centiseconds = ((milliseconds % 1000) ~/ 10).toString().padLeft(
        2,
        '0',
      );

      return '$minutes:$seconds.$centiseconds';
    }

    return Material(
      color: AppTheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: AppTheme.border, width: 2),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    recordAnswer.language,
                    style: const TextStyle(
                      color: AppTheme.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    recordAnswer.answer,
                    style: const TextStyle(
                      color: AppTheme.text,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              formatMilliseconds(recordAnswer.time),
              style: const TextStyle(
                color: AppTheme.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
