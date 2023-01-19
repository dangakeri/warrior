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
    required this.subtitle,
    required this.image,
    required this.content,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          ListTile(
            title: Row(
              children: [
                Container(
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: image,
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
                child: Text(
              content,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).buttonColor,
              ),
            )),
          )
        ]),
      ),
    );
  }
}
