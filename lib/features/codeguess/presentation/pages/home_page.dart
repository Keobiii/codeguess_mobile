import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Center(
          child: Text(
            'Welcome to the Code Guess Game!',
            style: TextStyle(color: AppTheme.text, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
