import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../consts/app_colors.dart';

class IkigaiContainerWidget extends StatelessWidget {
  final Color color;
  final String text;
  final String content;
  final VoidCallback callback;
  final SvgPicture image;
  const IkigaiContainerWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.content,
    required this.callback,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 0,
        color: AppColors.blue,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        content,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: callback,
                      child: const Text(
                        'Learn',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontFamily: 'Nunito',
                        ),
                      ))
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: image,
            ),
          ],
        ),
      ),
    );
  }
}
