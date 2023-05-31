import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../consts/app_colors.dart';
import '../widgets/for_you_widget.dart';
import '../widgets/grid_view_widget.dart';
import '../widgets/todays_mediatation_widget.dart';
import 'notifications.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool expanded = false;
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
      body: '',
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

  // ignore: avoid_print
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
      backgroundColor: AppColors.background1,
      body: ScrollConfiguration(
        behavior: NoGlow(),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SettingPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    BootstrapIcons.gear,
                    color: Colors.white,
                  ),
                )
              ],
              backgroundColor: Colors.transparent,
              expandedHeight: MediaQuery.of(context).size.height * 0.22,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      color: AppColors.blue,
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.07),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'Hi,$name ',
                              style: const TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'Focus even more and get the perfect\nthe day brings along',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          Text(
                            date,
                            style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        Row(
                          children: [
                            Text(
                              'For you $name',
                              style: Style.heading,
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        const ForYouWidget(
                          title: 'Make Your day shine',
                          content: '',
                          text1: 'Benediction:',
                          text2: 'Bed: ',
                          text3: 'Body exercise:',
                          text4: 'Bath COLD water: ',
                          text5: 'Enrich your mind withgood wishes prayer ',
                          text6: 'Get enough sleep to feel energized.',
                          text7: 'Exercise your body to feel awake and alert',
                          text8: 'Take a cold shower to boost your energy',
                        ),
                        const ForYouWidget(
                          title: 'Balance your Emotions',
                          content: '',
                          text1: 'Take a break:',
                          text2: 'Express yourself:',
                          text3: 'Practice mindfulness:',
                          text4: 'Seek out support:',
                          text5:
                              'Step back and take a break when your\nemotions start to become overwhelming',
                          text6:
                              'Give yourself permission to express\nyour emotions in healthy ways, such as\nthrough writing, art, music, or talking with\na friend',
                          text7:
                              'Use mindfulness techniques to become\naware of your thoughts and feelings\nwithout judging them',
                          text8:
                              'Talk to trusted people about how you’re\nfeeling and find comfort in a supportive\nenvironment',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        const ForYouWidget(
                          title: 'Relax and Calm Your Mind',
                          content: '',
                          text1: 'Find a comfortable and quiet space:',
                          text2: 'Focus on your breath:',
                          text3: 'Release any tension from your body:',
                          text4: 'Body Scan',
                          text5:
                              'Having a comfortable and peaceful\nplace to practice meditation can help\nto create an atmosphere conducive to\nrelaxation.',
                          text6:
                              'Breathing is one of the most effective\nways to relax your mind and body. ',
                          text7:
                              'Before starting your meditation, take a\nfew moments to scan your body and\nnotice any areas of tension or discomfort.',
                          text8:
                              'Scan your body from head to toe, focusing\non each body part.',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        const Row(
                          children: [
                            Text(
                              'Today Meditation',
                              style: Style.heading,
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        const TodaysMeditationWidget(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        const Card(
                          elevation: 0,
                          color: AppColors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Quote of the Day:',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Paradise is not a place; it\'s a state of consciousness.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '-Sri Chinmoy',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        const Row(
                          children: [
                            Text(
                              'Explore categories',
                              style: Style.heading,
                            ),
                          ],
                        ),
                        const GridViewWidget(),
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
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class Style {
  static const TextStyle heading = TextStyle(
    color: Colors.white,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );
}
