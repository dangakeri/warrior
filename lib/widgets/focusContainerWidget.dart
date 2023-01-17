import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FocusContainerWidget extends StatefulWidget {
  final Color color;

  final String text;
  final SvgPicture image;
  final String focusMusic;
  final VoidCallback callback;
  const FocusContainerWidget({
    Key? key,
    required this.color,
    required this.image,
    required this.text,
    required this.focusMusic,
    required this.callback,

    // required this.callback,
  }) : super(key: key);

  @override
  State<FocusContainerWidget> createState() => _FocusContainerWidgetState();
}

class _FocusContainerWidgetState extends State<FocusContainerWidget> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void dispose() {
    assetsAudioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    bool isPlaying = false;
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.text,
                      style: const TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Focus even more',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: Theme.of(context).buttonColor),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: widget.callback,
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange),
                        child: const Center(
                            child: Text('Start',
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                    // IconButton(
                    //     onPressed: widget.callback,
                    //     icon: const Icon(Icons.play_arrow)),
                    const SizedBox(width: 35),
                    const Text(
                      '',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: widget.image,
          ),
          // SvgPicture.asset('assets/healthy.svg')
        ],
      ),
    );
  }
}
