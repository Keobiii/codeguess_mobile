import 'package:codeguess/features/codeguess/presentation/pages/game_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/codeguess/presentation/pages/history_page.dart';
import '../../features/codeguess/presentation/pages/home_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/game/:language',
      builder: (context, state) {
        final langauge = state.pathParameters['language']!;

        return GamePage(langauge: langauge);
      },
    ),
    GoRoute(path: '/history', builder: (context, state) => const HistoryPage()),
  ],
);
