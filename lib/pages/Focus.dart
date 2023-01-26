import 'package:Warriors/consts/app_colors.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/focusContainerWidget.dart';
import 'play.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({
    super.key,
  });

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void dispose() {
    assetsAudioPlayer.dispose();
    super.dispose();
  }

  bool isPlaying = false;
  String name = '';
  String time = '';
  @override
  void initState() {
    time = greetings();
    getUserInfo();
    super.initState();
  }

  getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var username = prefs.getString("userName");
    setState(() {
      name = username!;
    });
  }

  String greetings() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'morning';
    }
    if (hour < 17) {
      return 'afternoon';
    }
    return 'evening';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      body: ScrollConfiguration(
        behavior: NoGlow(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            // physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 90),
              Center(
                  child: Text(
                'Good $time $name',
                style: const TextStyle(
                    fontSize: 17,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              const SizedBox(height: 10),
              const Center(
                  child: Text(
                'Focus Even more',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
              )),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Perfect Rain',
                color: Colors.grey.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/rain.svg',
                  height: 150,
                ),
                focusMusic: 'rain',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(
                        music: 'rain', chakra: 'Perfect Rain');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Mystic Temple',
                color: Colors.orange.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/temple.svg',
                  height: 100,
                ),
                focusMusic: 'temple',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(music: 'temple', chakra: 'Temple');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Crackling',
                color: Colors.pink.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/cracking.svg',
                  height: 150,
                ),
                focusMusic: 'cracking',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(
                        music: 'cracking', chakra: 'Cracking');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Chewing',
                color: Colors.purple.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/chewing.svg',
                  height: 150,
                ),
                focusMusic: 'chewing',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(music: 'chewing', chakra: 'Chewing');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Cat Purring',
                color: Colors.green.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/cat.svg',
                  height: 50,
                ),
                focusMusic: 'purring',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(music: 'purring', chakra: 'Purring');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Breathing',
                color: Colors.yellow.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/breathing.svg',
                  height: 150,
                ),
                focusMusic: 'breathing',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(
                        music: 'breathing', chakra: 'Breathing');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Nature',
                color: Colors.teal.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/nature1.svg',
                  height: 150,
                ),
                focusMusic: 'nature',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(music: 'nature', chakra: 'Nature');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Music',
                color: Colors.amber.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/music.svg',
                  height: 100,
                ),
                focusMusic: 'music',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(
                        music: 'music', chakra: 'Touching Music');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Fire',
                color: Colors.red.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/fire.svg',
                  height: 150,
                ),
                focusMusic: 'fire',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(music: 'fire', chakra: 'Fire');
                  }));
                },
              ),
              const SizedBox(height: 20),
              FocusContainerWidget(
                text: 'Storm',
                color: Colors.black26.withOpacity(.4),
                image: SvgPicture.asset(
                  'assets/storm.svg',
                  height: 100,
                ),
                focusMusic: 'storm',
                callback: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PlayPage(music: 'storm', chakra: 'Storm');
                  }));
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .03),
            ],
          ),
        ),
      ),
    );
  }
}

class NoGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
