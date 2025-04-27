import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  final VoidCallback onNext;

  const IntroPage2({super.key, required this.onNext});

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
          stops: [0.0, 0.33, 0.66, 1.0],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Are you a\nPhotographer Or\nLooking For One?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 40,
              fontWeight: FontWeight.w700,
              height: 1.25,
              letterSpacing: 0,
              color: Color(0xC2000704), // full dark color
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 126,
            height: 55,
            child: ElevatedButton(
              onPressed: onNext,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xB212BB6A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
