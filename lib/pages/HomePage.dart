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
      // backgroundColor: Colors.black,

      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Theme.of(context).backgroundColor,
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.of(context).push(
      //             MaterialPageRoute(builder: (_) => const SettingPage()),
      //           );
      //         },
      //         icon: Icon(
      //           BootstrapIcons.gear,
      //           color: Theme.of(context).buttonColor,
      //         )),
      //     const SizedBox(width: 10),
      //   ],
      // ),
      //  ClipPath(
      //       clipper: RoundedDiagonalPathClipper(),
      //       child: Container(
      //         height: 320,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.all(Radius.circular(50.0)),
      //           color: Colors.orange,
      //         ),
      //         child: Center(child: Text("RoundedDiagonalPathClipper()")),
      //       ),
      //     ),
      // body: ListView(
      //   physics: const BouncingScrollPhysics(),
      //   children: [

      //     const SizedBox(height: 30),
      //     const SizedBox(height: 200),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: Row(
      //         children: [
      //           Text(
      //             'Be a Warrior, $name ',
      //             style: const TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 16,
      //                 color: Colors.white),
      //           ),
      //           const Spacer(),
      //           TextButton(
      //             onPressed: () {
      //               Navigator.of(context).push(
      //                 MaterialPageRoute(
      //                   builder: (_) => const SeeAll(),
      //                 ),
      //               );
      //             },
      //             child: Text(
      //               'See All',
      //               style: TextStyle(
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 16,
      //                   color: Colors.white),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(height: 20),
      //     Container(
      //       height: MediaQuery.of(context).size.height * 0.24,
      //       width: MediaQuery.of(context).size.width,
      //       child: ListView(
      //         scrollDirection: Axis.horizontal,
      //         physics: const BouncingScrollPhysics(),
      //         children: [
      //           Row(
      //             children: [
      //               const SizedBox(width: 20),
      //               GestureDetector(
      //                 onTap: () {
      //                   Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                       builder: (_) => const ChakraPage(),
      //                     ),
      //                   );
      //                 },
      //                 child: const TilesContainerWidget(
      //                   text: 'Meditation',
      //                   content: 'Chakras',
      //                   image: AssetImage('assets/chakra.jpeg'),
      //                 ),
      //               ),
      //               const SizedBox(width: 20),
      //               GestureDetector(
      //                 onTap: () {
      //                   Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                       builder: (_) => const BreathingPage(),
      //                     ),
      //                   );
      //                 },
      //                 child: const TilesContainerWidget(
      //                   text: 'Breathing workout',
      //                   content: 'Breathing',
      //                   image: AssetImage('assets/breathing.jpg'),
      //                 ),
      //               ),
      //               const SizedBox(width: 20),
      //               GestureDetector(
      //                 onTap: () {
      //                   Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                       builder: (_) => const ChakraPage(),
      //                     ),
      //                   );
      //                 },
      //                 child: const TilesContainerWidget(
      //                   text: 'Fear',
      //                   content: 'Overcoming Fear',
      //                   image: AssetImage('assets/fear.jpeg'),
      //                 ),
      //               ),
      //               const SizedBox(width: 20),
      //               GestureDetector(
      //                 onTap: () {
      //                   Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                       builder: (_) => const ChakraPage(),
      //                     ),
      //                   );
      //                 },
      //                 child: const TilesContainerWidget(
      //                   text: 'stressed',
      //                   content: 'Stress',
      //                   image: AssetImage('assets/stress.jpeg'),
      //                 ),
      //               ),
      //               const SizedBox(width: 20),
      //               GestureDetector(
      //                 onTap: () {
      //                   Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                       builder: (_) => const ChakraPage(),
      //                     ),
      //                   );
      //                 },
      //                 child: const TilesContainerWidget(
      //                   text: 'Anxious',
      //                   content: 'Anxiety',
      //                   image: AssetImage('assets/anxiety.jpeg'),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(height: 30),
      //   ],
      // ),

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
                      children: const [
                        SizedBox(height: 50),
                        Text(
                          'Meditate',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Focus even more and get the perfect the day brings along',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
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
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              'Explore categories',
                              style: TextStyle(
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
