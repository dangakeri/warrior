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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // colors: Chakras.returnColors('')
          colors: [
            AppColors.blue,
            Colors.pink,
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
            const AvatarGlow(
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
                    'assets/chakra.jpeg',
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
  static List gradient1 = [0xFFFF0000, 0xFFd00000, 0xFFdc2f02];
  static List gradient2 = [0xFFff7b00, 0xFFff8800, 0xFFff9500];
  static List gradient3 = [0xFFfff200, 0xFFffd900, 0xFFffbf00];
  static List gradient4 = [0xFF38b000, 0xFF9ef01a, 0xFFccff33];
  static List gradient5 = [0xFF00b4d8, 0xFF90e0ef, 0xFF80ffdb];
  static List gradient6 = [0xFF99aaff, 0xFF4B0082, 0xFF99bbff];
  static List gradient7 = [0xFF7b2cbf, 0xFF9d4edd, 0xFFe0c3fc];
  static List gradient8 = [0xFF027c90, 0xFFFFC0CB];

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
        // ignore: dead_code
        break;
      case ('Svadhisthana'):
        return gradient2;
        // ignore: dead_code
        break;
      case ('Manipura'):
        return gradient3;
        // ignore: dead_code
        break;
      case ('Anahata'):
        return gradient4;
        // ignore: dead_code
        break;
      case ('Vishuddha'):
        return gradient5;
        // ignore: dead_code
        break;
      case ('Ajna'):
        return gradient6;
        // ignore: dead_code
        break;

      case ('Sahasrara'):
        return gradient7;
        // ignore: dead_code
        break;

      default:
        return gradient8;
    }
  }

// code to return the images
  static changeImage(String chakraType) {
    switch (chakraType) {
      case ('Muladhara'):
        return image1;
        // ignore: dead_code
        break;
      case ('Svadhisthana'):
        return image2;
        // ignore: dead_code
        break;
      case ('Manipura'):
        return image3;
        // ignore: dead_code
        break;
      case ('Anahata'):
        return image4;
        // ignore: dead_code
        break;
      case ('Vishuddha'):
        return image5;
        // ignore: dead_code
        break;
      case ('Ajna'):
        return image6;
        // ignore: dead_code
        break;

      case ('Sahasrara'):
        return image7;
        // ignore: dead_code
        break;

      default:
        return image8;
    }
  }
}
