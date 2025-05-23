import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xB212BA69),
                  Colors.white,
                  Colors.white,
                  Color(0xB212BA69),
                ],
                stops: [0.0, 0.33, 0.67, 1.0],
              ),
            ),
          ),

          // Content
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    const Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xC1000703),
                        fontSize: 50,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Welcome Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xC1000703),
                        fontSize: 30,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 60),

                    _buildInputField('Username'),
                    const SizedBox(height: 20),
                    _buildInputField('Password', obscureText: true),
                    const SizedBox(height: 16),

                    const Text(
                      'Forgot your Username or Password?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xC1000703),
                        fontSize: 17,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 36),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF43C37C),
                        minimumSize: const Size(160, 56),
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInputField(String hint, {bool obscureText = false}) {
    return Container(
      width: double.infinity,
      height: 66,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(60),
        ),
      ),
      alignment: Alignment.center,
      child: TextField(
        obscureText: obscureText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 25,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w700,
            height: 1.6,
          ),
        ),
      ),
    );
  }
}
