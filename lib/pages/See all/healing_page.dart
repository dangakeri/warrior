import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';
import '../../widgets/meditation_widget.dart';
import '../play.dart';

class HealingPage extends StatelessWidget {
  const HealingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            // floating: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            expandedHeight: 210,
            pinned: true,
            // snap: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              expandedTitleScale: 1,
              title: const Text(
                'Healing',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/healing.jpeg',
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .17),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ExpansionTile(
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  title: Text(
                    'Healing',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Nunito',
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  children: [
                    ListTile(
                      textColor: Colors.white,
                      title: Text(
                        'Healing meditation is a type of meditation that uses focus, visualization, and affirmations to promote physical and emotional healing. It can be used to help with a variety of conditions, including pain, anxiety, depression, and stress.\nTo practice healing meditation, find a quiet place where you will not be disturbed. Sit or lie down in a comfortable position and close your eyes. Take a few deep breaths and focus on your breath. Once you are relaxed, begin to visualize a healing image or scene. You may also want to repeat an affirmation to yourself. Continue to focus on your breath and your visualization for as long as you like.\nWhen you are finished, take a few deep breaths and open your eyes. You may feel relaxed and refreshed. Healing meditation can be done on a regular basis to promote physical and emotional healing',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                MeditationWidget(
                  image: const AssetImage('assets/healing.jpeg'),
                  title: 'Gentle tools for sleep',
                  time: "5-30 Min",
                  content: 'Daniel Gakeri',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PlayPage(
                        chakra: '',
                        music: '',
                      ),
                    ));
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                MeditationWidget(
                  image: const AssetImage('assets/healing.jpeg'),
                  title: 'Gentle tools for sleep',
                  time: "5-30 Min",
                  content: 'Daniel Gakeri',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PlayPage(
                        chakra: '',
                        music: '',
                      ),
                    ));
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                MeditationWidget(
                  image: const AssetImage('assets/healing.jpeg'),
                  title: 'Gentle tools for sleep',
                  time: "5-30 Min",
                  content: 'Daniel Gakeri',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PlayPage(
                        chakra: '',
                        music: '',
                      ),
                    ));
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                MeditationWidget(
                  image: const AssetImage('assets/healing.jpeg'),
                  title: 'Gentle tools for sleep',
                  time: "5-30 Min",
                  content: 'Daniel Gakeri',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PlayPage(
                        chakra: '',
                        music: '',
                      ),
                    ));
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                MeditationWidget(
                  image: const AssetImage('assets/healing.jpeg'),
                  title: 'Gentle tools for sleep',
                  time: "5-30 Min",
                  content: 'Daniel Gakeri',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PlayPage(
                        chakra: '',
                        music: '',
                      ),
                    ));
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                MeditationWidget(
                  image: const AssetImage('assets/healing.jpeg'),
                  title: 'Gentle tools for sleep',
                  time: "5-30 Min",
                  content: 'Daniel Gakeri',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PlayPage(
                        chakra: '',
                        music: '',
                      ),
                    ));
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                MeditationWidget(
                  image: const AssetImage('assets/healing.jpeg'),
                  title: 'Gentle tools for sleep',
                  time: "5-30 Min",
                  content: 'Daniel Gakeri',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PlayPage(
                        chakra: '',
                        music: '',
                      ),
                    ));
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                MeditationWidget(
                  image: const AssetImage('assets/healing.jpeg'),
                  title: 'Gentle tools for sleep',
                  time: "5-30 Min",
                  content: 'Daniel Gakeri',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const PlayPage(
                        chakra: '',
                        music: '',
                      ),
                    ));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
