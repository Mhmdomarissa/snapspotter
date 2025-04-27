import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xB212BB6A),
            Colors.white,
            Colors.white,
            Color(0xB212BB6A),
          ],
          stops: [0.0, 0.33, 0.66, 1.0], // 33% green, 33% white, 33% green
        ),
      ),
      child: const Center(
        child: Text(
          'SnapSpotter',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: 40,
            fontWeight: FontWeight.w700,
            height: 1.25,
            letterSpacing: 0,
            color: Color(0xC2000704),
          ),
        ),
      ),
    );
  }
}
