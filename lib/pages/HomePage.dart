import 'package:Warriors/consts/app_colors.dart';
import 'package:Warriors/pages/See%20all/see_allPage.dart';
import 'package:Warriors/pages/chakraPage.dart';
import 'package:Warriors/pages/play.dart';
import 'package:Warriors/pages/settings.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../notifications.dart';
import '../widgets/TilesContainerWidget.dart';
import '../widgets/chakraswidget.dart';
import '../widgets/continueWidget.dart';
import 'See all/breathingPage.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  String name = '';
  String date = '';

  @override
  void initState() {
    getUserInfo();
    date = getCurrentDate();
    NotificationsApi.showScheduleNotification(
      scheduleDate: DateTime.now().add(const Duration(seconds: 12)),
      title: 'Warrior',
      body:
          'Conveniently budget for your monthly fare with Tap & Go and travel stress-free!',
      payload: '',
    );

//Initiate the API ~ Notifications
    NotificationsApi.init(initSchedule: true);
    listenNotifications();

    super.initState();
  }

  void listenNotifications() {
    NotificationsApi.onNotifications.stream.listen(onClickedNotification);
  }

  void onClickedNotification(String? payload) => print("Warrior");

  getCurrentDate() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('EEE, M/d/y');
    final String formatted = formatter.format(now);

    return formatted.toString();
  }

  getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var username = prefs.getString("userName");
    setState(() {
      name = username!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: NoGlow(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 200,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      color: Colors.grey.withOpacity(.3),
                    ),
                    child: Center(
                        child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Hi,$name ',
                            style: const TextStyle(
                              fontSize: 25,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Focus even more and get the perfect the day brings along',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                      ],
                    )),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'For you',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Material(
                          elevation: 5,
                          child: Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Material(
                          elevation: 5,
                          child: Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          children: const [
                            Text(
                              'Today Meditation',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/breathing.jpg'),
                            ),
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              'Explore categories',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1100,
                          child: GridView.count(
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            crossAxisCount: 2,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'Meditate',
                                  content: 'Chakra',
                                  image: AssetImage('assets/chakra.jpeg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'stressed',
                                  content: 'Stress',
                                  image: AssetImage('assets/stress.jpeg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'Anxious',
                                  content: 'Anxiety',
                                  image: AssetImage('assets/anxiety.jpeg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const BreathingPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'Exercise your breathing',
                                  content: 'Breathing',
                                  image: AssetImage('assets/breathing.jpg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'stressed',
                                  content: 'Stress',
                                  image: AssetImage('assets/stress.jpeg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'stressed',
                                  content: 'Stress',
                                  image: AssetImage('assets/stress.jpeg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'stressed',
                                  content: 'Stress',
                                  image: AssetImage('assets/stress.jpeg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'stressed',
                                  content: 'Stress',
                                  image: AssetImage('assets/stress.jpeg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'stressed',
                                  content: 'Stress',
                                  image: AssetImage('assets/stress.jpeg'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ChakraPage(),
                                    ),
                                  );
                                },
                                child: const TilesContainerWidget(
                                  text: 'stressed',
                                  content: 'Stress',
                                  image: AssetImage('assets/stress.jpeg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NoGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
