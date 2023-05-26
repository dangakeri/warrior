import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../consts/app_colors.dart';

import '../pages/home.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String name = '';

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var username = prefs.getString("userName");
    setState(() {
      name = username!;
    });
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    name == '' ? const OnBoardingPage() : const Home()));
      },
    );
    return Scaffold(
      backgroundColor: AppColors.background1,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/warrior.jpeg',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Animate(
            onPlay: (controller) => controller.repeat(),
            delay: 1000.ms,
            effects: [
              const FlipEffect(),
              const ScaleEffect(),
              FadeEffect(duration: 2.seconds),
            ],
            child: const Text(
              'Warriors',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  color: AppColors.blue),
            ),
          )
        ],
      ),
    );
  }
}
