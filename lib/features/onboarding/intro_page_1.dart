
import 'package:flutter/material.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..forward();

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0.0, -0.3),
              child: Icon(Icons.camera_alt, size: 80, color: Color(0xFF43C37C)),
            ),
            Align(
              alignment: const Alignment(0.0, 0.1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'SnapSpotter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xC1000703),
                      fontSize: 40,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Discover and capture\nthe perfect moment — every time.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
