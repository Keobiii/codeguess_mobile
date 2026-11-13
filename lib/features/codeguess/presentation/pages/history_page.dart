import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/theme/app_theme.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome to the History Page!',
                style: TextStyle(color: AppTheme.text, fontSize: 22),
              ),
              GestureDetector(
                onTap: () => context.go('/home'),
                child: Icon(Iconsax.home, size: 30, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
