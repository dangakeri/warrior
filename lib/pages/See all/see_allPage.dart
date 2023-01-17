import 'package:flutter/material.dart';

import '../../widgets/TilesContainerWidget.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Wrap(
            children: [
              TilesContainerWidget(
                image: Image.asset(
                  'assets/muladhara.jpeg',
                  height: 50,
                ),
                text: 'Muladhara',
                content: 'Base of your spine',
              ),
              TilesContainerWidget(
                image: Image.asset(
                  'assets/muladhara.jpeg',
                  height: 50,
                ),
                text: 'Muladhara',
                content: 'Base of your spine',
              ),
            ],
          )
        ],
      ),
    );
  }
}
