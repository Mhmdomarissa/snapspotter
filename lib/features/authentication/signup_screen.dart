import 'package:flutter/material.dart';
import 'dart:ui';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top Green Blur
          Positioned(
            top: -150,
            right: -150,
            child: Container(
              width: 530,
              height: 356,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(18, 187, 106, 0.70),
                borderRadius: BorderRadius.circular(530),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 92, sigmaY: 92),
                child: Container(color: Colors.transparent),
              ),
            ),
          ),

          // Bottom Green Blur
          Positioned(
            bottom: -150,
            left: -150,
            child: Container(
              width: 530,
              height: 356,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(18, 187, 106, 0.70),
                borderRadius: BorderRadius.circular(530),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 92, sigmaY: 92),
                child: Container(color: Colors.transparent),
              ),
            ),
          ),

          // Main content
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),

                  // Title
                  const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 7, 4, 0.76),
                      height: 1.0,
                    ),
                  ),

                  const SizedBox(height: 120),

                  // Apple Button
                  buildButton(
                    iconAsset: 'assets/icons/apple_icon.png',
                    label: 'Sign Up With Apple',
                    bgColor: Colors.black,
                    textColor: Colors.white,
                    borderColor: null,
                  ),

                  const SizedBox(height: 20),

                  // Google Button
                  buildButton(
                    iconAsset: 'assets/icons/google_icon.png',
                    label: 'Sign Up With Google',
                    bgColor: Colors.white,
                    textColor: Colors.black,
                    borderColor: Colors.black,
                  ),

                  const SizedBox(height: 20),

                  // Email Button
                  buildButton(
                    iconAsset: 'assets/icons/email_icon.png',
                    label: 'Sign Up With Email',
                    bgColor: Colors.white,
                    textColor: Colors.black,
                    borderColor: Colors.black,
                  ),

                  const SizedBox(height: 120),

                  // Bottom text
                  
                  TextButton(
  onPressed: () {
    Navigator.pushNamed(context, '/signin');
  },
  child: const Text(
    'Do you have an account? Sign In.',
    style: TextStyle(
      fontFamily: 'SF Pro Display',
      fontSize: 17,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(0, 7, 4, 0.76),
    ),
  ),
),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton({
    required String iconAsset,
    required String label,
    required Color bgColor,
    required Color textColor,
    Color? borderColor,
  }) {
    return Container(
      width: 323,
      height: 66,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(60),
        border: borderColor != null ? Border.all(color: borderColor, width: 1) : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconAsset, width: 24, height: 24),
          const SizedBox(width: 12),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: textColor,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
