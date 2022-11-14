import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text,
                        style:
                            const TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        content,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: callback,
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(150),
                      ),
                      child: Center(child: Text('Learn')),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(padding: const EdgeInsets.only(right: 20), child: image),
          ],
        ),
      ),
    );
  }
}
