import 'package:flutter/material.dart';

import '../features/auth/presentation/screen/splash_screen.dart';

class SpendWiseApp extends StatelessWidget {
  const SpendWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpendWise',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      // Light Theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F766E),
          brightness: Brightness.light,
        ),
      ),

      // Dark Theme
      // darkTheme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: const Color(0xFF0F766E),
      //     brightness: Brightness.dark,
      //   ),
      // ),
      home: const SplashScreen(),
    );
  }
}
