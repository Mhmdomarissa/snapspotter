import 'package:flutter/material.dart';
import 'features/onboarding/onboarding_screen.dart';
import 'features/authentication/sign_up_screen.dart';

void main() {
  runApp(const SnapSpotterApp());
}

class SnapSpotterApp extends StatelessWidget {
  const SnapSpotterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
