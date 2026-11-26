import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:spendwise/core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Run startup checks here:
    // Authentication, local database, storage, etc.

    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;
    context.goNamed('dashboard');
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final backgroundColor = isDark
        ? AppDarkColors.background
        : AppColors.background;

    final surfaceColor = isDark ? AppDarkColors.surface : AppColors.surface;

    final primaryColor = isDark ? AppDarkColors.primary : AppColors.primary;

    final textColor = isDark
        ? AppDarkColors.textPrimary
        : AppColors.textPrimary;

    final secondaryTextColor = isDark
        ? AppDarkColors.textSecondary
        : AppColors.textSecondary;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            children: [
              const Spacer(),

              // App Icon
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: surfaceColor,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withValues(alpha: 0.12),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(18),
                child: Image.asset(
                  'assets/icons/spendwise_icon.png',
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 24),

              // Brand Name
              Text(
                'SpendWise',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 8),

              // Tagline
              Text(
                'Your money, tracked smarter.',
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(fontSize: 15, color: secondaryTextColor),
              ),

              const Spacer(),

              // Loading Indicator
              SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                  backgroundColor: isDark
                      ? AppDarkColors.border
                      : AppColors.border,
                ),
              ),

              const SizedBox(height: 12),

              // Status Text
              Text(
                'Securing your vault...',
                style: Theme.of(context).textTheme.bodySmall
                    ?.copyWith(fontSize: 13, color: secondaryTextColor),
              ),

              const SizedBox(height: 6),

              // Security Note
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock, size: 13, color: primaryColor),
                  const SizedBox(width: 6),
                  Flexible(
                    child: Text(
                      'v1.0.0 • Protected with Bank-Grade Encryption',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall
                          ?.copyWith(fontSize: 11, color: secondaryTextColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
