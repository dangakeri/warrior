import 'package:Warriors/consts/app_colors.dart';
import 'package:flutter/material.dart';

class BreathingPage extends StatelessWidget {
  const BreathingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            // floating: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            expandedHeight: 210,
            pinned: true,
            // snap: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              expandedTitleScale: 1,
              title: Text(
                'Breathing',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/breathing.jpg',
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .17),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Meditations',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
          ]))
        ],
      ),
    );
  }
}

class MeditationWidget extends StatelessWidget {
  const MeditationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * .09,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Container(
              height: 60,
              width: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/breathing.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Gentle tools for sleep',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: const [
                    Text(
                      '30 Min',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Daniel Gakeri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Icon(Icons.lock, color: Colors.black),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
