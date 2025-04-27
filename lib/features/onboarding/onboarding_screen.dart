import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_page_1.dart';
import 'intro_page_2.dart';
import 'intro_page_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onFirstPage = true;
  bool onLastPage = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      _controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                onFirstPage = (index == 0);
                onLastPage = (index == 2);
              });
            },
            children: [
              const IntroPage1(),
              IntroPage2(
                onNext: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              const IntroPage3(),
            ],
          ),
          if (!onFirstPage)
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: Colors.green,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
