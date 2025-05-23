import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 932,
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
      child: Align(
        alignment: const Alignment(0.0, 0.1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.person_pin_circle, size: 40, color: Color(0xFF43C37C)),
                SizedBox(width: 20),
                Icon(Icons.camera_alt, size: 40, color: Color(0xFF43C37C)),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Find talent or\nshowcase your own studio!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                color: Color(0xC1000703),
                fontWeight: FontWeight.w700,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
