import 'dart:ui';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top green blur
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

          // Bottom green blur
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

          // Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Sign In title
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 7, 4, 0.76),
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  // Welcome Back
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 7, 4, 0.76),
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),

                  // Username field
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
                        hintText: 'Username',
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

                  // Password field
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
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
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

                  const SizedBox(height: 15),

                  // Forgot text
                  TextButton(
  onPressed: () {
    Navigator.pushNamed(context, '/forgot');
  },
  child: const Text(
    "Forgot your Username or Password?",
    style: TextStyle(
      fontFamily: 'SF Pro Display',
      fontSize: 17,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(0, 7, 4, 0.76),
      height: 2.9,
    ),
    textAlign: TextAlign.center,
  ),
),


                  const SizedBox(height: 20),

                  // Sign In Button
                  Container(
                    width: 275,
                    height: 66,
                    decoration: BoxDecoration(
                      color: const Color(0xFF12BB6A),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
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
          ),
        ],
      ),
    );
  }
}
