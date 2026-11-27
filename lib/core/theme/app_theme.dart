import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';
import 'app_radius.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return _buildTheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.tertiary,
      neutral: AppColors.neutral,
      background: AppColors.background,
      surface: AppColors.surface,
      text: AppColors.textPrimary,
      secondaryText: AppColors.textSecondary,
      disabledText: AppColors.textDisabled,
      border: AppColors.border,
      success: AppColors.success,
      warning: AppColors.warning,
      error: AppColors.expense,
      info: AppColors.info,
    );
  }

  static ThemeData get darkTheme {
    return _buildTheme(
      brightness: Brightness.dark,
      primary: AppDarkColors.primary,
      secondary: AppDarkColors.secondary,
      tertiary: AppDarkColors.tertiary,
      neutral: AppDarkColors.neutral,
      background: AppDarkColors.background,
      surface: AppDarkColors.surface,
      text: AppDarkColors.textPrimary,
      secondaryText: AppDarkColors.textSecondary,
      disabledText: AppDarkColors.textDisabled,
      border: AppDarkColors.border,
      success: AppDarkColors.success,
      warning: AppDarkColors.warning,
      error: AppDarkColors.expense,
      info: AppDarkColors.info,
    );
  }

  static ThemeData _buildTheme({
    required Brightness brightness,
    required Color primary,
    required Color secondary,
    required Color tertiary,
    required Color neutral,
    required Color background,
    required Color surface,
    required Color text,
    required Color secondaryText,
    required Color disabledText,
    required Color border,
    required Color success,
    required Color warning,
    required Color error,
    required Color info,
  }) {
    final isDark = brightness == Brightness.dark;

    final scheme = ColorScheme(
      brightness: brightness,

      // Primary
      primary: primary,
      onPrimary: isDark ? neutral : Colors.white,
      primaryContainer: tertiary,
      onPrimaryContainer: secondary,

      // Secondary
      secondary: secondary,
      onSecondary: isDark ? text : Colors.white,
      secondaryContainer: isDark ? secondary : tertiary,
      onSecondaryContainer: isDark ? text : secondary,

      // Tertiary
      tertiary: tertiary,
      onTertiary: isDark ? neutral : secondary,
      tertiaryContainer: tertiary,
      onTertiaryContainer: secondary,

      // Background and surface
      surface: surface,
      onSurface: text,
      surfaceContainerLowest: background,
      surfaceContainerLow: background,
      surfaceContainer: surface,
      surfaceContainerHigh: surface,
      surfaceContainerHighest: surface,

      // Semantic
      error: error,
      onError: Colors.white,

      // Borders
      outline: border,
      outlineVariant: border,

      // Other
      shadow: Colors.black,
      scrim: Colors.black54,
      inverseSurface: isDark ? Colors.white : neutral,
      onInverseSurface: isDark ? neutral : Colors.white,
      inversePrimary: isDark ? AppColors.primary : AppDarkColors.primary,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: background,

      fontFamily: AppTypography.fontFamily,
      fontFamilyFallback: AppTypography.fontFallback,

      // Typography
      textTheme: TextTheme(
        headlineMedium: AppTypography.heading.copyWith(color: text),
        titleLarge: AppTypography.title.copyWith(color: text),
        bodyMedium: AppTypography.body.copyWith(color: text),
        bodySmall: AppTypography.label.copyWith(color: secondaryText),
      ),

      // AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        foregroundColor: text,
        elevation: 0,
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
      ),

      // Cards
      cardTheme: CardThemeData(
        color: surface,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
          side: BorderSide(color: border),
        ),
      ),

      // Inputs
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface,
        contentPadding: const EdgeInsets.all(16),
        hintStyle: TextStyle(color: disabledText),
        labelStyle: TextStyle(color: secondaryText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: primary, width: 1.5),
        ),
      ),

      // Elevated buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: isDark ? neutral : Colors.white,
          minimumSize: const Size(double.infinity, 50),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
      ),

      // Text buttons
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),

      // Icons
      iconTheme: IconThemeData(color: secondaryText),

      // Dividers
      dividerTheme: DividerThemeData(color: border, thickness: 1),

      // Switches
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primary;
          }
          return disabledText;
        }),
      ),

      // Floating action button
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: isDark ? neutral : Colors.white,
      ),
    );
  }
}
