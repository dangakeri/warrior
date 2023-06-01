import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';
import '../../widgets/meditation_widget.dart';
import '../play.dart';

class CompassionPage extends StatelessWidget {
  const CompassionPage({super.key});

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
                'Compassion',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/compassion.jpg',
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
                  initiallyExpanded: true,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  title: Text(
                    'Compassion',
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
                        'Compassion meditation is a type of meditation that focuses on developing compassion for oneself and others. It can be done by focusing on the suffering of others and wishing them relief, or by cultivating feelings of kindness and love. Compassion meditation can help to increase compassion, reduce stress, and improve overall well-being.',
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
                  image: const AssetImage('assets/compassion.jpg'),
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
                  image: const AssetImage('assets/compassion.jpg'),
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
                  image: const AssetImage('assets/compassion.jpg'),
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
                  image: const AssetImage('assets/compassion.jpg'),
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
                  image: const AssetImage('assets/compassion.jpg'),
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
                  image: const AssetImage('assets/compassion.jpg'),
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
                  image: const AssetImage('assets/compassion.jpg'),
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
                  image: const AssetImage('assets/compassion.jpg'),
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
