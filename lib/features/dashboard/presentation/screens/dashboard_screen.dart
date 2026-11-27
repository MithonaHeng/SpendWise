import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spendwise/core/theme/theme_mode_provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        backgroundColor: colors.surface,
        elevation: 0,
        titleSpacing: 16,

        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: colors.secondaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.account_balance_wallet_outlined,
                color: colors.primary,
                size: 24,
              ),
            ),

            const SizedBox(width: 10),

            Text(
              'SpendWise',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: colors.onSurface,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: () {
              final currentMode = ref.read(themeModeProvider);

              ref
                  .read(themeModeProvider.notifier)
                  .setTheme(
                    currentMode == ThemeMode.dark
                        ? ThemeMode.light
                        : ThemeMode.dark,
                  );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18),
              Text(
                'ស្វាគមន៍មកកាន់ផ្ទាំងគ្រប់គ្រង!',
                style: theme.textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () => {},
                child: const Text('Add Expense'),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () => {},
                child: const Text('Add Income'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
