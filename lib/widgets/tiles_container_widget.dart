import 'package:flutter/material.dart';

class TilesContainerWidget extends StatefulWidget {
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
  State<TilesContainerWidget> createState() => _TilesContainerWidgetState();
}

class _TilesContainerWidgetState extends State<TilesContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.19,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          // image:image ,
          fit: BoxFit.cover, image: widget.image,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .15),
          Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16,
              fontFamily: 'Nunito',
              color: Colors.white.withOpacity(.7),
            ),
          ),
          Text(
            widget.content,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: 'Nunito',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
//             child: new Text(
//               'Hello world',
//               style: Theme.of(context).textTheme.display4
//             ),
//             decoration: new BoxDecoration(
//               color: const Color(0xff7c94b6),
//               image: new DecorationImage(
//                 fit: BoxFit.cover,
//                 colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
//                 image: new NetworkImage(
//                   'http://www.allwhitebackground.com/images/2/2582-190x190.jpg',
//                 ),
//               ),
//             ),