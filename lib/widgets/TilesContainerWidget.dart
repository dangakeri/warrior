import 'package:flutter/material.dart';

class TilesContainerWidget extends StatelessWidget {
  final String text;
  final Image image;
  final String content;
  const TilesContainerWidget({
    Key? key,
    required this.text,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.23,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/chakra.jpg'),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: image,
                ),
                const SizedBox(height: 15),
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Center(
                  child: Text(
                    content,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
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