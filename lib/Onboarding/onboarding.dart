import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../consts/app_colors.dart';
import 'create_account_page.dart';

class OnBoardingPage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          decoration: getPageDecoration(),
          image: SvgPicture.asset(
            'assets/meditation.svg',
            height: 150,
          ),
          title: 'Meditation',
          body: 'Unlock and unleash your potential by meditating regularly'),
      PageViewModel(
          decoration: getPageDecoration(),
          image: SvgPicture.asset(
            'assets/purpose.svg',
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
      backgroundColor: AppColors.background1,
      body: IntroductionScreen(
        showNextButton: false,
        skip: const Text(
          'Skip',
          style: TextStyle(color: Colors.white),
        ),
        done: const Text(
          'Create Account',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        onDone: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const CreateAccount()),
          );
        },
        onSkip: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const CreateAccount()),
          );
        },
        pages: getPages(),
        globalBackgroundColor: AppColors.blue,
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
          color: Colors.white,
        ),
        bodyTextStyle: TextStyle(
          fontSize: 15,
          height: 1.4,
          color: Colors.white,
        ),
        // descriptionPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: AppColors.background1,
      );
}
