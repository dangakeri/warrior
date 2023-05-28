import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';
import '../../widgets/meditation_widget.dart';
import '../play.dart';

class RelaxationPage extends StatelessWidget {
  const RelaxationPage({super.key});

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
                'Relaxation',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/relaxation.jpeg',
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
                    'Relaxation',
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
                        'Relaxation meditation is a type of meditation that focuses on reducing stress and promoting relaxation. It can be done by focusing on the breath, body sensations, or a calming image or sound. Relaxation meditation can help to reduce stress, improve sleep, and boost the immune system',
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
                  image: const AssetImage('assets/relaxation.jpeg'),
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
                  image: const AssetImage('assets/relaxation.jpeg'),
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
                  image: const AssetImage('assets/relaxation.jpeg'),
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
                  image: const AssetImage('assets/relaxation.jpeg'),
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
                  image: const AssetImage('assets/relaxation.jpeg'),
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
                  image: const AssetImage('assets/relaxation.jpeg'),
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
                  image: const AssetImage('assets/relaxation.jpeg'),
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
                  image: const AssetImage('assets/relaxation.jpeg'),
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
