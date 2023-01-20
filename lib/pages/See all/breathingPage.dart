import 'package:Warriors/consts/app_colors.dart';
import 'package:flutter/material.dart';

class BreathingPage extends StatelessWidget {
  const BreathingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  // color: Theme.of(context).cardColor,
                )),
            title: Text(
              'Breathing',
              style: TextStyle(),
            ),
            expandedHeight: 210,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(60),
                  //     bottomRight: Radius.circular(60)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/breathing.jpg',
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Text(
                          'Breathing Exercise is very beneficial to our good working of our body',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                      ),
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
                ),
              ),
            ),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            MeditationWidget(),
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
          color: AppColors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
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
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Gentle tools for sleep',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      '30 Min',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).cardColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Daniel Gakeri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.lock,
              color: Theme.of(context).cardColor,
            ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
