import 'dart:ui';
import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top blur
          Positioned(
            top: -180,
            right: -180,
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

          // Bottom blur
          Positioned(
            bottom: -180,
            left: -180,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30),

                  const Text(
                    "Authentication",
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 7, 4, 0.76),
                      height: 1.0,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "We’ve sent 6 numbers OTP to your\nemail. Kindly check your inbox.",
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 7, 4, 0.76),
                      height: 1.35,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 30),

                  // OTP Input
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter OTP',
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

                  const SizedBox(height: 20),

                  // Next Button
                  Container(
                    width: 275,
                    height: 77,
                    decoration: BoxDecoration(
                      color: const Color(0xFF12BB6A),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
