import 'package:flutter/material.dart';

import '../pages/See all/anxiety_page.dart';
import '../pages/See all/breathing_page.dart';
import '../pages/See all/chakra_page.dart';
import '../pages/See all/compassion_page.dart';
import '../pages/See all/fear_page.dart';
import '../pages/See all/happiness_page.dart';
import '../pages/See all/healing_page.dart';
import '../pages/See all/relaxation_page.dart';
import '../pages/See all/sleep_page.dart';
import '../pages/See all/stress_page.dart';
import 'tiles_container_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.42,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const SleepPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Deep Sleep',
              content: 'Sleep',
              image: AssetImage('assets/sleep.jpeg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const ChakraPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Meditate',
              content: 'Chakra',
              image: AssetImage('assets/chakra.jpeg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StressPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'stressed',
              content: 'Stress',
              image: AssetImage('assets/stress.jpeg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const AnxietyPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Anxious',
              content: 'Anxiety',
              image: AssetImage('assets/anxiety.jpeg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const BreathingPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Exercise your breathing',
              content: 'Breathing',
              image: AssetImage('assets/breathing.jpg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const FearPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Fearful',
              content: 'Fear',
              image: AssetImage('assets/fear.jpeg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const HappinessPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Be happy',
              content: 'Happiness',
              image: AssetImage('assets/happiness.jpg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const HealingPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Recovery and healing',
              content: 'Healing',
              image: AssetImage('assets/healing.jpeg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const CompassionPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Be compassionate',
              content: 'Compassion',
              image: AssetImage('assets/compassion.jpg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const RelaxationPage(),
                ),
              );
            },
            child: const TilesContainerWidget(
              text: 'Deep Relaxation',
              content: 'Relaxation',
              image: AssetImage('assets/relaxation.jpeg'),
            ),
          ),
        ],
      ),
    );
  }
}
