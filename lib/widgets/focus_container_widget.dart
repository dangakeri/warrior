import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../consts/app_colors.dart';

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
    // ignore: unused_local_variable
    final assetsAudioPlayer = AssetsAudioPlayer();
    // ignore: unused_local_variable
    bool isPlaying = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Card(
        color: AppColors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25, bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.text,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        'Focus even more',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: widget.callback,
                    child: const Text(
                      'Start',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: widget.image,
            ),
          ],
        ),
      ),
    );
  }
}
