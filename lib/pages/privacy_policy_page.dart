import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.blue,
        centerTitle: false,
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: const [],
      ),
    );
  }
}
