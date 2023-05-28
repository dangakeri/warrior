import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';
import '../../widgets/meditation_widget.dart';
import '../play.dart';

class SleepPage extends StatelessWidget {
  const SleepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,

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
              // centerTitle: true,
              expandedTitleScale: 1,
              title: const Text(
                'Sleep',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/breathing.jpg',
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
                    'Sleeping',
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
                        'This Sleep meditation will help you relax your mind and body and prepare for a restful night\'s sleep. Start by finding a comfortable position to sit or lie down in. Focus your attention on your breath. Notice the sensation of the air entering and leaving your lungs. As you breathe, relax your body a little more with each breath. Let go of any worries or concerns that may be on your mind. Visualize a peaceful scene that helps you relax and drift off to sleep. When your mind wanders, simply bring your focus back to your breath. Stay in this relaxed state until you drift off to sleep.',
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                  image: const AssetImage('assets/breathing.jpg'),
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
                SizedBox(height: MediaQuery.of(context).size.height * .02),
              ],
            ),
          )
        ],
      ),
    );
  }
}
