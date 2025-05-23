import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  final VoidCallback onStartPressed;
  const IntroPage3({super.key, required this.onStartPressed});

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
            const Icon(Icons.map_outlined, size: 70, color: Color(0xFF43C37C)),
            const SizedBox(height: 24),
            const Text(
              'Get started —\nexplore the best spots near you.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Color(0xC1000703),
                fontWeight: FontWeight.w700,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 30),

            // "Start Now!" button with tap callback
            GestureDetector(
              onTap: onStartPressed,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFF43C37C),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Text(
                  'Start Now!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
