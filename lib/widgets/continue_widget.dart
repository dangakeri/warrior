// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../consts/app_colors.dart';

class ContinueWidget extends StatelessWidget {
  final String text;
  const ContinueWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}
