import 'package:flutter/material.dart';
import '../consts/app_colors.dart';
import '../pages/play.dart';
import 'continue_widget.dart';

class ChakraWidget extends StatelessWidget {
  final String title;
  final String time;
  final String content;
  final AssetImage image;
  final AssetImage image2;
  final String heading;
  final String description;
  final String music;
  final String chakra;

  const ChakraWidget({
    Key? key,
    required this.title,
    required this.time,
    required this.content,
    required this.image,
    required this.image2,
    required this.heading,
    required this.description,
    required this.music,
    required this.chakra,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            context: context,
            builder: (context) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image:
                              DecorationImage(image: image2, fit: BoxFit.cover),
                        ),
                      ),
                      Text(
                        heading,
                        style: TextStyle1.heading,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .5,
                        child: ListView(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child:
                                  Text(description, style: TextStyle1.heading),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01),
                      ContinueWidget(
                        callback: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => PlayPage(
                                music: music,
                                chakra: chakra,
                              ),
                            ),
                          );
                        },
                        text: 'Start $chakra',
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .02),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        child: Card(
          color: AppColors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: image, fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .07,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          time,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          content,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextStyle1 {
  static const TextStyle heading = TextStyle(
    color: AppColors.background,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
}

class CustomListTile extends StatelessWidget {
  final String title;
  const CustomListTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 13,
          fontFamily: 'Nunito',
          height: 1.5,
          color: Colors.white,
        ),
      ),
    );
  }
}
