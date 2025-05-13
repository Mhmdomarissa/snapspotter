import 'dart:ui';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top background blur
          Positioned(
            top: -100,
            right: -150,
            child: Container(
              width: 530,
              height: 356,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(18, 187, 106, 0.7),
                borderRadius: BorderRadius.circular(530),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 92, sigmaY: 92),
                child: const SizedBox(),
              ),
            ),
          ),

          // Bottom background blur
          Positioned(
            top: 450,
            left: -150,
            child: Container(
              width: 530,
              height: 356,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(18, 187, 106, 0.7),
                borderRadius: BorderRadius.circular(530),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 92, sigmaY: 92),
                child: const SizedBox(),
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
                  // Title
                  const Text(
                    'Trouble Signing In?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 7, 4, 0.76),
                      height: 1.0,
                    ),
                  ),

                  const SizedBox(height: 100),

                  // Subtitle
                  const Text(
                    "We've Got You!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 7, 4, 0.76),
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Email input
                  Container(
                    width: 323,
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.27),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'SF Pro Display',
                          height: 1.6,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Next button
                  SizedBox(
                    width: 275,
                    height: 66,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/otp'); // <-- define this route in main.dart
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF12BB6A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          height: 1.6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
