import 'package:Warriors/consts/app_colors.dart';
import 'package:flutter/material.dart';

class MeditationWidget extends StatefulWidget {
  final String title;
  final String time;
  final String content;
  final AssetImage image;
  const MeditationWidget({
    Key? key,
    required this.title,
    required this.time,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  State<MeditationWidget> createState() => _MeditationWidgetState();
}

class _MeditationWidgetState extends State<MeditationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * .09,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: widget.image, fit: BoxFit.cover)),
            ),
            Column(
              children: [
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Text(
                        widget.title,
                        // 'Gentle tools for sleep',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Text(
                        widget.time,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        widget.content,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            const Icon(Icons.lock, color: Colors.black),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
