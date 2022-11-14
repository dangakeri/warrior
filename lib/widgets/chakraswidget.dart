import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class ChakrasWidget extends StatelessWidget {
  final String text;
  final String subtitle;
  final Image image;
  final String content;
  const ChakrasWidget({
    Key? key,
    required this.text,
    required this.subtitle,
    required this.image,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          ListTile(
            title: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/chakra.jpg',
                    height: 40,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                    child: Text(
                  content,
                  style: TextStyle(fontSize: 13),
                )),
              ),
              // Spacer(),
              // const SizedBox(width: 5),
              ClipRRect(borderRadius: BorderRadius.circular(15), child: image),
            ],
          )
        ]),
      ),
    );
  }
}
