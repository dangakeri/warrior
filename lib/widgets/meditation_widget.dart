import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class MeditationWidget extends StatelessWidget {
  final String title;
  final String time;
  final String content;
  final AssetImage image;
  final VoidCallback callback;
  const MeditationWidget({
    Key? key,
    required this.title,
    required this.time,
    required this.content,
    required this.image,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          elevation: 0,
          color: AppColors.blue,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: image, fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .07,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          time,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          content,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const Icon(Icons.lock, color: Colors.white),
                const SizedBox(width: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
