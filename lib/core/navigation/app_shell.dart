import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const AppShell({super.key, required this.navigationShell});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  void _onTap(BuildContext context, int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final navigationShell = widget.navigationShell;

    return Scaffold(
      body: navigationShell,

      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,

        onDestinationSelected: (index) {
          _onTap(context, index);
        },

        // backgroundColor: colors.surface,
        // elevation: 0,
        // height: 70,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: colors.onSurfaceVariant),
            selectedIcon: Icon(Icons.home_outlined, color: colors.primary),
            label: 'ដើម',
          ),

          NavigationDestination(
            icon: Icon(
              Icons.receipt_long_outlined,
              color: colors.onSurfaceVariant,
            ),
            selectedIcon: Icon(Icons.receipt_long, color: colors.primary),
            label: 'ប្រតិបត្តិការ',
          ),

          NavigationDestination(
            icon: Icon(Icons.qr_code_scanner, color: colors.onSurfaceVariant),
            selectedIcon: Icon(Icons.qr_code_scanner, color: colors.primary),
            label: 'ស្កេន',
          ),

          NavigationDestination(
            icon: Icon(Icons.pie_chart_outline, color: colors.onSurfaceVariant),
            selectedIcon: Icon(Icons.pie_chart_outline, color: colors.primary),
            label: 'ថវិកា',
          ),

          NavigationDestination(
            icon: Icon(Icons.person_outline, color: colors.onSurfaceVariant),
            selectedIcon: Icon(Icons.person_outline, color: colors.primary),
            label: 'អ្នកប្រើ',
          ),
        ],
      ),
    );
  }
}
