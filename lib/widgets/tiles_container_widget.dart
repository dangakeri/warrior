import 'package:flutter/material.dart';

class TilesContainerWidget extends StatelessWidget {
  final String text;
  final AssetImage image;
  final String content;
  const TilesContainerWidget({
    Key? key,
    required this.text,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.19,
      width: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .16),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14,
              fontFamily: 'Nunito',
              color: Colors.white.withOpacity(.7),
            ),
          ),
          Flexible(
            child: Text(
              content,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                fontFamily: 'Nunito',
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
