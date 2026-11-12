import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/theme/app_theme.dart';

class AppShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AppShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: AppTheme.background,
        elevation: 0,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) {
          navigationShell.goBranch(index, initialLocation: index == 0);
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Iconsax.home, color: Colors.black),
            selectedIcon: const Icon(Iconsax.home, color: AppTheme.text),
            label: 'Home',
          ),
          NavigationDestination(
            icon: const Icon(Iconsax.clock, color: Colors.black),
            selectedIcon: const Icon(Iconsax.clock, color: AppTheme.text),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
