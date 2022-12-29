import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(height: 40),
          Center(
              child: Text(
            'Focus with ${widget.chakra}',
            style: const TextStyle(fontSize: 17, color: Colors.black),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          AvatarGlow(
            endRadius: 200,
            repeat: true,
            showTwoGlows: true,
            glowColor: Colors.purple,
            child: CircleAvatar(
              radius: 90,
              backgroundColor: Colors.orange,
              child: CircleAvatar(
                radius: 80,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset('assets/chakra.jpg')),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
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
                          backgroundColor: Colors.orange,
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
    );
  }
}
