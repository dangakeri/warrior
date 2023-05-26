import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';
import '../../widgets/meditation_widget.dart';
import '../play.dart';

class AnxietyPage extends StatelessWidget {
  const AnxietyPage({super.key});

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
                'Anxiety',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/anxiety.jpeg',
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
                    'Anxiety',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: 'Nunito',
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  children: [
                    ListTile(
                      textColor: Colors.white,
                      title: Text(
                        'This anxiety meditation focuses on finding a sense of calm and peace in the present moment. It begins with a few moments of deep relaxation, followed by a mindful scan of the body to become aware of any areas of tension. The meditation then guides you through a process of breathing deeply and focusing on the sensations of the breath to help release any tension in the body. Finally, you are encouraged to bring your awareness to the present moment and to appreciate the peace and calm that can be found here.',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 16,
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
