import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'createAccount.dart';

class OnBoardingPage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          decoration: getPageDecoration(),
          image: SvgPicture.asset(
            'assets/healthy.svg',
            height: 150,
          ),
          title: 'Healthy',
          body: 'Live a healthy life by following just \na few steps...'),
      PageViewModel(
          decoration: getPageDecoration(),
          image: Image.asset(
            'assets/ikigai.jpeg',
            height: 150,
          ),
          title: 'Find an ikigai',
          body: 'Search your ikigai and experience change\nin your life'),
      PageViewModel(
          decoration: getPageDecoration(),
          image: SvgPicture.asset(
            'assets/longetivity.svg',
            height: 150,
          ),
          title: 'Longetivity',
          body: 'Live a long and a healthy life'),
    ];
  }

  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showNextButton: false,
        skip: const Text(
          'Skip',
          style: TextStyle(color: Colors.amber),
        ),
        done: const Text(
          'Create Account',
          style: TextStyle(fontSize: 14, color: Colors.amber),
        ),
        onDone: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => CreateAccount()),
          );
        },
        onSkip: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => CreateAccount()),
          );
        },
        pages: getPages(),
        globalBackgroundColor: Colors.white,
        showBackButton: false,
        showSkipButton: true,
      ),
    );
  }

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
        bodyTextStyle: TextStyle(fontSize: 15, height: 1.4),
        // descriptionPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
