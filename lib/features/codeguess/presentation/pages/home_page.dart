import 'package:codeguess/features/codeguess/presentation/widget/language_card.dart';
import 'package:codeguess/features/codeguess/widget/home_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const SizedBox(height: 24),
              Center(
                child: Text(
                  'Can you solve it quickly?',
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.text,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'List of language',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.text,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      LanguageCard(
                        title: 'Java',
                        icon: FontAwesomeIcons.java,
                        onTap: () => context.go('/game/Java'),
                      ),
                      const SizedBox(height: 16),

                      LanguageCard(
                        title: 'C',
                        icon: FontAwesomeIcons.c,
                        onTap: () => context.go('/game/C'),
                      ),
                      const SizedBox(height: 16),

                      LanguageCard(
                        title: 'PHP',
                        icon: FontAwesomeIcons.php,
                        onTap: () => context.go('/game/PHP'),
                      ),
                      const SizedBox(height: 16),

                      LanguageCard(
                        title: 'Javascript',
                        icon: FontAwesomeIcons.squareJs,
                        onTap: () => context.go('/game/JavaScript'),
                      ),
                      const SizedBox(height: 16),

                      LanguageCard(
                        title: 'C#',
                        onTap: () => context.go('/game/C#'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
