import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class PlayPage extends StatefulWidget {
  final String music;
  final String chakra;
  const PlayPage({super.key, required this.music, required this.chakra});
  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  @override
  void dispose() {
    assetsAudioPlayer.dispose();
    super.dispose();
  }

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Chakras.returnColors(widget.chakra)[0],
            Chakras.returnColors(widget.chakra)[1],
            Chakras.returnColors(widget.chakra)[2],
          ],
        )),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Center(
              child: Text(
                'Focus with ${widget.chakra}',
                style: const TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            AvatarGlow(
              endRadius: 200,
              repeat: true,
              showTwoGlows: true,
              glowColor: Colors.purple,
              child: CircleAvatar(
                radius: 90,
                backgroundColor: AppColors.blue,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    '${Chakras.changeImage(widget.chakra)}',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0),
                    borderRadius: BorderRadius.circular(10)),
                child: StreamBuilder(
                    stream: assetsAudioPlayer.isPlaying,
                    builder: (context, snapshot) {
                      final bool isPlayingMusic = snapshot.data!;
                      return GestureDetector(
                        onTap: () {
                          if (isPlayingMusic) {
                            setState(() {
                              isPlaying = true;
                            });
                            assetsAudioPlayer.pause();
                          } else {
                            // ignore: unrelated_type_equality_checks
                            if (isPlaying == 'true') {
                              assetsAudioPlayer.play();
                            } else {
                              assetsAudioPlayer.open(
                                Audio("assets/${widget.music}.mp3"),
                                showNotification: true,
                                autoStart: true,
                                loopMode: LoopMode.single,
                              );
                            }
                          }
                        },
                        child: Center(
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: AppColors.blue,
                            child: isPlayingMusic
                                ? const Icon(
                                    Icons.pause,
                                    color: Colors.white,
                                    size: 32,
                                  )
                                : const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Chakras {
  // List of chakras gradients
  static List<Color> gradient1 = [
    const Color(0xFFFF0000),
    const Color(0xFFd00000),
    const Color(0xFFdc2f02)
  ];
  static List<Color> gradient2 = [
    const Color(0xFFff7b00),
    const Color(0xFFff8800),
    const Color(0xFFff9500)
  ];
  static List<Color> gradient3 = [
    const Color(0xFFfff200),
    const Color(0xFFffd900),
    const Color(0xFFffbf00)
  ];
  static List<Color> gradient4 = [
    const Color(0xFF38b000),
    const Color(0xFF9ef01a),
    const Color(0xFFccff33)
  ];
  static List<Color> gradient5 = [
    const Color(0xFF00b4d8),
    const Color(0xFF90e0ef),
    const Color(0xFF80ffdb)
  ];
  static List<Color> gradient6 = [
    const Color(0xFF4B0082),
    const Color(0xFF99aaff),
    const Color(0xFF99bbff)
  ];
  static List<Color> gradient7 = [
    const Color(0xFF7b2cbf),
    const Color(0xFF9d4edd),
    const Color(0xFFe0c3fc)
  ];

// String names of the chakras images
  static String image1 = 'assets/muladhara.png';
  static String image2 = 'assets/svadisthana.png';
  static String image3 = 'assets/manipura.png';
  static String image4 = 'assets/anahata.png';
  static String image5 = 'assets/visuddha.png';
  static String image6 = 'assets/ajna.png';
  static String image7 = 'assets/sahasrara.png';
  static String image8 = 'assets/chakra.jpeg';

  // statement to return the colors
  static returnColors(String chakraType) {
    switch (chakraType) {
      case ('Muladhara'):
        return gradient1;

      case ('Svadhisthana'):
        return gradient2;

      case ('Manipura'):
        return gradient3;
      case ('Anahata'):
        return gradient4;

      case ('Vishuddha'):
        return gradient5;

      case ('Ajna'):
        return gradient6;

      case ('Sahasrara'):
        return gradient7;

      default:
        return gradient1;
    }
  }

// code to return the images
  static changeImage(String chakraType) {
    switch (chakraType) {
      case ('Muladhara'):
        return image1;

      case ('Svadhisthana'):
        return image2;

      case ('Manipura'):
        return image3;

      case ('Anahata'):
        return image4;

      case ('Vishuddha'):
        return image5;

      case ('Ajna'):
        return image6;

      case ('Sahasrara'):
        return image7;

      default:
        return image8;
    }
  }
}
