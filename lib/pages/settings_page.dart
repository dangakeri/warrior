// ignore_for_file: avoid_unnecessary_containers, use_build_context_synchronously

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:warriors/pages/disclaimer_page.dart';
import 'package:warriors/pages/privacy_policy_page.dart';

import '../Onboarding/splash_screen.dart';
import '../consts/app_colors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final Uri _whatsapp = Uri.parse('sms:+254742138012');
  final Uri _phone = Uri.parse('tel:+254742138012');
  final Uri _email = Uri.parse(
      'mailto:info@dangakeri254.com?subject=Hello&body=Thank you for contacting Kidszoo Kenya By Climax Technologies! Please let us know how we can help you. We are starting a new revolution in E- Learning and we invite you to Join the Revolution!.');
  Future<void> _launchWhatsapp() async {
    if (!await launchUrl(_whatsapp)) {
      throw 'Could not launch $_whatsapp';
    }
  }

  Future<void> _launchPhone() async {
    if (!await launchUrl(_phone)) {
      throw 'Could not launch $_phone';
    }
  }

  Future<void> _launchEmail() async {
    if (!await launchUrl(_email)) {
      throw 'Could not launch $_email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: AppColors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
            fontSize: 15,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Card(
              color: AppColors.blue,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        context: context,
                        builder: (context) => SizedBox(
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ListView(
                              children: [
                                const SizedBox(height: 10),
                                Center(
                                  child: Container(
                                    height: 5,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.blue,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  contentPadding:
                                      const EdgeInsets.only(left: -15),
                                  title: const Row(
                                    children: [
                                      Text(
                                        'Reach out to us!',
                                        style: TextStyle(
                                          color: AppColors.blue,
                                          fontFamily: 'Nunito',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Column(
                                    children: [
                                      const Text(
                                        'We\'re here to help! If you have any questions or concerns, please don\'t hesitate to contact us.',
                                        style: TextStyle(
                                          color: AppColors.blue,
                                          fontFamily: 'Nunito',
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          GestureDetector(
                                            onTap: _launchEmail,
                                            child: Container(
                                              child: const Column(
                                                children: [
                                                  Icon(
                                                    BootstrapIcons.envelope,
                                                    color: AppColors.blue,
                                                    size: 30,
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Email',
                                                    style: TextStyle(
                                                      color: AppColors.blue,
                                                      fontFamily: 'Nunito',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: _launchPhone,
                                            child: Container(
                                              child: const Column(
                                                children: [
                                                  Icon(
                                                    BootstrapIcons.telephone,
                                                    color: AppColors.blue,
                                                    size: 30,
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Phone',
                                                    style: TextStyle(
                                                      color: AppColors.blue,
                                                      fontFamily: 'Nunito',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: _launchWhatsapp,
                                            child: Container(
                                              child: const Column(
                                                children: [
                                                  Icon(
                                                    BootstrapIcons.chat,
                                                    color: AppColors.blue,
                                                    size: 30,
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Message',
                                                    style: TextStyle(
                                                      color: AppColors.blue,
                                                      fontFamily: 'Nunito',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'We look forward to hearing from you!',
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );

                      //     actions: [
                      //       TextButton(
                      //           onPressed: () {
                      //             Navigator.pop(context);
                      //           },
                      //           child: const Text(
                      //             'Close',
                      //             style: TextStyle(
                      //               color: AppColors.blue,
                      //               fontFamily: 'Nunito',
                      //             ),
                      //           ))
                      //     ],
                      //   ),
                      // );
                    },
                    leading: const Icon(
                      BootstrapIcons.chat,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Contact us',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'Talk to us',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Row(
                            children: [
                              Image.asset(
                                'assets/warrior.png',
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(width: 30),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Warriors',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'V1.0.0 Jelly Fish',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          content: const Text(
                            'Warrior is an application built to make you feel appreciated and have time to meditate for your mental wellbeing ',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          actions: [
                            CupertinoButton(
                                child: const Text(
                                  "Close",
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        ),
                      );
                    },
                    leading: const Icon(
                      BootstrapIcons.info_circle,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'V1.0.0 Dolphin',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(
                      BootstrapIcons.star,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Rate us',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Review and rate our app',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(
                      BootstrapIcons.google_play,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Updates',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Check for updates',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Card(
              color: AppColors.blue,
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(
                      BootstrapIcons.grid,
                      color: Colors.white,
                    ),
                    title: Text(
                      'More apps',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Explore More apps',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Share.share('Be a warior ');
                    },
                    leading: const Icon(
                      BootstrapIcons.share,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Share',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'Share with friends',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const PrivacyPolicyPage(),
                        ),
                      );
                    },
                    leading: const Icon(
                      BootstrapIcons.lock,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'Our privacy policy',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const DisclaimerPage(),
                        ),
                      );
                    },
                    leading: const Icon(
                      BootstrapIcons.shield,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Disclaimer',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: const Text(
                      'The Disclaimer',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Card(
              color: AppColors.blue,
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CupertinoAlertDialog(
                          title: const Text(
                            'Are you sure you want to \n log out?',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16,
                            ),
                          ),
                          content: const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: SizedBox(),
                          ),
                          actions: [
                            CupertinoButton(
                                child: const Text(
                                  'Ok',
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                                onPressed: () async {
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  await prefs.clear();
                                  Navigator.of(context)
                                      .popUntil((route) => route.isFirst);
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) {
                                    return const SplashScreen();
                                  }));
                                }),
                            CupertinoButton(
                                child: const Text('Cancel',
                                    style: TextStyle(
                                      color: AppColors.blue,
                                      fontFamily: 'Nunito',
                                    )),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });
                },
                leading: const Icon(
                  BootstrapIcons.box_arrow_right,
                  color: Colors.white,
                ),
                title: const Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Nunito',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text(
                  'log out ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Nunito',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
