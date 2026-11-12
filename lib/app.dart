import 'package:flutter/material.dart';

import 'core/router/app_router.dart';

class CodeGuess extends StatelessWidget {
  const CodeGuess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Code Guess',
      routerConfig: appRouter,
    );
  }
}
