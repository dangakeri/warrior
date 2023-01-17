import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class ChakrasWidget extends StatelessWidget {
  final String text;
  final String subtitle;
  final Image image;
  final String content;
  final Color color;
  const ChakrasWidget({
    Key? key,
    required this.text,
    required this.subtitle,
    required this.image,
    required this.content,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
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
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).buttonColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontFamily: "nunito",
                      color: Theme.of(context).buttonColor),
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
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).buttonColor,
                  ),
                )),
              ),
              // Spacer(),
              // const SizedBox(width: 5),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: image,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
