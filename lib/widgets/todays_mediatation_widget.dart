import 'package:flutter/material.dart';

class TodaysMeditationWidget extends StatelessWidget {
  const TodaysMeditationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/breathing.jpg'),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Row(
            children: [
              const Icon(
                Icons.timelapse,
                color: Colors.white,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .02),
              const Text(
                '20 Min',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          right: 10,
          top: 10,
          child: Icon(
            Icons.lock,
            color: Colors.white,
          ),
        ),
        const Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enrich your Spirit',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'with Warriors',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Nunito',
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
