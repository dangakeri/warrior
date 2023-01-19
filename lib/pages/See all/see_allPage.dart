import 'package:flutter/material.dart';
import '../../widgets/TilesContainerWidget.dart';
import '../chakraPage.dart';
import 'breathingPage.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Text(
              'Sleep Meditation',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Row(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Meditation',
                            content: 'Chakras',
                            image: AssetImage('assets/chakra.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const BreathingPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Breathing workout',
                            content: 'Breathing',
                            image: AssetImage('assets/breathing.jpg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Fear',
                            content: 'Overcoming Fear',
                            image: AssetImage('assets/fear.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'stressed',
                            content: 'Stress',
                            image: AssetImage('assets/stress.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Anxious',
                            content: 'Anxiety',
                            image: AssetImage('assets/anxiety.jpeg'),
                          ),
                        ),
                      ])
                    ])),
            Text(
              'Breathing',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Row(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Meditation',
                            content: 'Chakras',
                            image: AssetImage('assets/chakra.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Breathing workout',
                            content: 'Breathing',
                            image: AssetImage('assets/breathing.jpg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Fear',
                            content: 'Overcoming Fear',
                            image: AssetImage('assets/fear.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'stressed',
                            content: 'Stress',
                            image: AssetImage('assets/stress.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Anxious',
                            content: 'Anxiety',
                            image: AssetImage('assets/anxiety.jpeg'),
                          ),
                        ),
                      ])
                    ])),
            Text(
              'Anxiety',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Row(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Meditation',
                            content: 'Chakras',
                            image: AssetImage('assets/chakra.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Breathing workout',
                            content: 'Breathing',
                            image: AssetImage('assets/breathing.jpg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Fear',
                            content: 'Overcoming Fear',
                            image: AssetImage('assets/fear.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'stressed',
                            content: 'Stress',
                            image: AssetImage('assets/stress.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Anxious',
                            content: 'Anxiety',
                            image: AssetImage('assets/anxiety.jpeg'),
                          ),
                        ),
                      ])
                    ])),
            Text(
              'Stress',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Row(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Meditation',
                            content: 'Chakras',
                            image: AssetImage('assets/chakra.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Breathing workout',
                            content: 'Breathing',
                            image: AssetImage('assets/breathing.jpg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Fear',
                            content: 'Overcoming Fear',
                            image: AssetImage('assets/fear.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'stressed',
                            content: 'Stress',
                            image: AssetImage('assets/stress.jpeg'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ChakraPage(),
                              ),
                            );
                          },
                          child: const TilesContainerWidget(
                            text: 'Anxious',
                            content: 'Anxiety',
                            image: AssetImage('assets/anxiety.jpeg'),
                          ),
                        ),
                      ])
                    ])),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
