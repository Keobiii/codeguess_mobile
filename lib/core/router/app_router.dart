import 'package:go_router/go_router.dart';

import '../../features/codeguess/presentation/pages/history_page.dart';
import '../../features/codeguess/presentation/pages/home_page.dart';
import '../../features/codeguess/widget/app_shell.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return AppShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/history',
              builder: (context, state) => const HistoryPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
