import 'package:flutter/material.dart';

import '../widgets/Pageview_container_widget.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    int pageChanged = 0;
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        onPageChanged: (index) {
          setState() {
            pageChanged = index;
          }
        },
        children: const [
          PageviewContainerWidget(
            text:
                'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
            image: 'assets/Muamar.png',
          ),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Emerland.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Santa.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/WestView.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Muamar.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Emerland.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Santa.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/WestView.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Muamar.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Emerland.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Santa.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/WestView.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Muamar.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Emerland.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/Santa.png'),
          PageviewContainerWidget(
              text:
                  'Our beliefs about what we are and what\nwe can be precisely determine what\nwe can',
              image: 'assets/WestView.png'),
        ],
      ),
    );
  }
}
