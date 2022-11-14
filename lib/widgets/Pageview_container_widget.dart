import 'dart:ui';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageviewContainerWidget extends StatelessWidget {
  final String image;
  final String text;
  const PageviewContainerWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
            ),
          ),
        ),
        const Positioned(
          top: 260,
          left: 20,
          child: Icon(
            BootstrapIcons.quote,
            size: 50,
            color: Colors.grey,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black.withOpacity(.6),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  // child: Text(text),
                  child: Text(
                    text
                    // 'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can'
                    ,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                    child: Text(
                  '- TONNY ROBBINS -',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ))
              ],
            ),
          ),
          // ),
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                CupertinoIcons.share,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 80,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.copy,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
