import 'package:flutter/material.dart';
import 'features/onboarding/onboarding_screen.dart';
import 'features/authentication/sign_in_screen.dart';
import 'package:snapspotter/features/authentication/forgot_password_screen.dart';
import 'package:snapspotter/features/authentication/otp_verification_screen.dart';
import 'package:snapspotter/features/authentication/reset_password_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/signin': (context) => const SignInScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
        '/otp': (context) => const OTPVerificationScreen(),
        '/reset': (context) => const ResetPasswordScreen(),


      },
      home: const OnboardingScreen(),
    );
  }
}
