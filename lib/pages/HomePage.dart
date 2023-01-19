import 'package:Warriors/consts/app_colors.dart';
import 'package:Warriors/pages/See%20all/see_allPage.dart';
import 'package:Warriors/pages/chakraPage.dart';
import 'package:Warriors/pages/play.dart';
import 'package:Warriors/pages/settings.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../notifications.dart';
import '../widgets/TilesContainerWidget.dart';
import '../widgets/chakraswidget.dart';
import '../widgets/continueWidget.dart';

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
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SettingPage()),
                );
              },
              icon: Icon(
                BootstrapIcons.gear,
                color: Theme.of(context).buttonColor,
              )),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: GestureDetector(
                    onTap: () {
                      NotificationsApi.showNotification(
                        scheduleDate:
                            DateTime.now().add(const Duration(seconds: 12)),
                        title: 'Warrior',
                        body:
                            'Conveniently budget for your monthly fare with Tap & Go and travel stress-free!',
                        payload: '',
                      );
                    },
                    child: Image.asset(
                      'assets/warrior.jpeg',
                      height: 70,
                      width: 70,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(child: Text(name)),
          const SizedBox(height: 10),
          Center(
              child: Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
          const SizedBox(height: 10),
          const Center(child: Text('Will help you focus even more')),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        'Meditate',
                        style: TextStyle(
                          color: Theme.of(context).buttonColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Everyday learn new ways to focus',
                        style: TextStyle(color: Theme.of(context).buttonColor),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20, right: 20, bottom: 15),
                        child: Container(
                          height: 125,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Believe in something even if it means\nloosing everything',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Theme.of(context).buttonColor,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 5,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(height: 10),
                              const Text('Warriors'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -20,
                  left: 40,
                  right: 40,
                  child: CircleAvatar(
                    // backgroundImage: AssetImage(
                    //   'assets/chakra.jpg',
                    // ),
                    radius: 25,
                    child: ClipOval(
                      child: Image.asset('assets/chakra.jpeg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Be a Warrior, $name ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SeeAll(),
                      ),
                    );
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).buttonColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.height * 0.24,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  children: [
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ChakraPage(),
                          ),
                        );
                      },
                      child: const TilesContainerWidget(
                        text: 'Meditation',
                        content: 'Chakras',
                        image: AssetImage('assets/chakra.jpeg'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ChakraPage(),
                          ),
                        );
                      },
                      child: const TilesContainerWidget(
                        text: 'Breathing workout',
                        content: 'Breathing',
                        image: AssetImage('assets/breathing.jpg'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ChakraPage(),
                          ),
                        );
                      },
                      child: const TilesContainerWidget(
                        text: 'Fear',
                        content: 'Overcoming Fear',
                        image: AssetImage('assets/fear.jpeg'),
                      ),
                    ),
                    const SizedBox(width: 20),
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
                    const SizedBox(width: 20),
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
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
