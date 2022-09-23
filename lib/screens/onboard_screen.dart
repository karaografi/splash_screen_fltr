import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'introscreen/introscreen1.dart';
import 'introscreen/introscreen2.dart';
import 'introscreen/introscreen3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            IntroScreen1(),
            IntroScreen2(),
            IntroScreen3(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.75),
          child: SmoothPageIndicator(controller: _controller, count: 3),
        )
      ],
    ));
  }
}
