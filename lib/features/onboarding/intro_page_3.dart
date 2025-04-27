import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
            'Find Your\nPerfect\nSpot!',
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
          const SizedBox(height: 40),
          SizedBox(
            width: 213,
            height: 66,
            child: ElevatedButton(
              onPressed: () {
                // TODO: Navigate to login/signup
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xB212BB6A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                elevation: 0,
              ),
              child: const Text(
                'Start Now!',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
