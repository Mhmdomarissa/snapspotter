
import 'package:flutter/material.dart';
import 'sign_in_screen.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Color(0xFF0C8E4F), Color(0xFF28D17F)],
                      ).createShader(bounds),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'SF Pro Display',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),

                    // Apple Button
                    _buildButton(
                      icon: Icons.apple,
                      text: 'Sign Up With Apple',
                      bgColor: Colors.black,
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 20),

                    // Google Button
                    _buildButton(
                      imageAsset: 'assets/icons/google.png',
                      text: 'Sign Up With Google',
                      bgColor: Colors.white,
                      textColor: Colors.black,
                      showBorder: true,
                    ),
                    const SizedBox(height: 20),

                    // Email Button
                    _buildButton(
                      icon: Icons.alternate_email,
                      text: 'Sign Up With Email',
                      bgColor: Colors.white,
                      textColor: Colors.black,
                      showBorder: true,
                    ),
                    const SizedBox(height: 50),

                    // Sign In Link
                    TextButton(
                      onPressed: () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignInScreen()),
  );
                      },
                      child: const Text(
                        'Do you have an account? Sign In.',
                        style: TextStyle(
                          color: Color(0xC1000703),
                          fontSize: 17,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  static Widget _buildButton({
    IconData? icon,
    String? imageAsset,
    required String text,
    required Color bgColor,
    required Color textColor,
    bool showBorder = false,
  }) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(60),
      shadowColor: Colors.black26,
      child: InkWell(
        borderRadius: BorderRadius.circular(60),
        onTap: () {},
        child: Container(
          width: 323,
          height: 66,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(60),
            border: showBorder ? Border.all(color: Colors.black, width: 1) : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(icon, color: textColor, size: 24),
              if (imageAsset != null)
                Image.asset(imageAsset, width: 24, height: 24),
              const SizedBox(width: 12),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
