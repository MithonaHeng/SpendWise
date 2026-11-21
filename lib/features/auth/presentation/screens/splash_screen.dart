import 'package:flutter/material.dart';

import '../../../dashboard/presentation/screens/dashboard_screen.dart';

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
    // Run real startup checks here (e.g., auth token, local DB/storage)
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const DashboardScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFF8F9FA);
    const primaryGreen = Color(0xFF066A44);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            children: [
              const Spacer(),

              // Rounded Emblem Card
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: primaryGreen.withValues(alpha: 0.12),
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
              const Text(
                'SpendWise',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 8),

              // Tagline
              const Text(
                'Your money, tracked smarter.',
                style: TextStyle(fontSize: 15, color: Color(0xFF4B5563)),
              ),

              const Spacer(),

              // Loading Indicator
              const SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation<Color>(primaryGreen),
                  backgroundColor: Color(0xFFD1D5DB),
                ),
              ),

              const SizedBox(height: 12),

              // Status Text
              const Text(
                'Securing your vault...',
                style: TextStyle(fontSize: 13, color: Color(0xFF6B7280)),
              ),

              const SizedBox(height: 6),

              // Footer Security Note
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.lock, size: 13, color: primaryGreen),
                  SizedBox(width: 6),
                  Text(
                    'v1.0.0 • Protected with Bank-Grade Encryption',
                    style: TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
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
