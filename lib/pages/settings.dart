// ignore_for_file: avoid_unnecessary_containers, use_build_context_synchronously

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

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
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
          ),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (() {
              showDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                  content: Row(
                    children: [
                      GestureDetector(
                        onTap: _launchEmail,
                        child: Container(
                          child: const Column(
                            children: [
                              Icon(
                                Icons.email,
                                color: AppColors.blue,
                                size: 40,
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
                                Icons.call,
                                color: AppColors.blue,
                                size: 40,
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
                                Icons.message,
                                color: AppColors.blue,
                                size: 40,
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
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Close',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontFamily: 'Nunito',
                          ),
                        ))
                  ],
                ),
              );
            }),
            child: const ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.white,
              ),
              title: Text(
                'Contact us',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
              ),
              subtitle: Text(
                'Talk to us',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              showDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: Row(
                    children: [
                      Image.asset(
                        'assets/warrior.jpeg',
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(width: 30),
                      const Column(
                        children: [
                          Text(
                            'Warriors',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'V1.0.0 Dolphin',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  content: const Text(
                    'Warrior is an application built to make you feel appreciated and have time to meditate for your mental wellbeing ',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Nunito',
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
            }),
            child: const ListTile(
              leading: Icon(
                BootstrapIcons.info,
                color: Colors.white,
              ),
              title: Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
              ),
              subtitle: Text(
                'V1.0.0 Dolphin',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),
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
              ),
            ),
            subtitle: Text(
              'Rate us',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Nunito',
              ),
            ),
          ),
          GestureDetector(
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
            child: const ListTile(
              leading: Icon(
                BootstrapIcons.box_arrow_left,
                color: Colors.white,
              ),
              title: Text(
                'Log out',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
              ),
              subtitle: Text(
                'log out ',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
