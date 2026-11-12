import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Center(
          child: Text(
            'Welcome to the History Page!',
            style: TextStyle(color: AppTheme.text, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
