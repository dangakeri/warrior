import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Onboarding/splash_screen.dart';

import '../notifications.dart';

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
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).buttonColor,
            )),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Theme.of(context).buttonColor,
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
                    child: Text('Contact Us'),
                  ),
                  content: Row(
                    children: [
                      GestureDetector(
                        onTap: _launchEmail,
                        child: Container(
                          child: Column(
                            children: const [
                              Icon(
                                Icons.email,
                                size: 40,
                              ),
                              SizedBox(height: 10),
                              Text('Email'),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: _launchPhone,
                        child: Container(
                          child: Column(
                            children: const [
                              Icon(
                                Icons.call,
                                size: 40,
                              ),
                              SizedBox(height: 10),
                              Text('Phone'),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: _launchWhatsapp,
                        child: Container(
                          child: Column(
                            children: const [
                              Icon(
                                Icons.message,
                                size: 40,
                              ),
                              SizedBox(height: 10),
                              Text('Message'),
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
                        child: Text(
                          'Close',
                          style:
                              TextStyle(color: Theme.of(context).buttonColor),
                        ))
                  ],
                ),
              );
            }),
            child: const ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact us'),
              subtitle: Text('Talk to us'),
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
                      Column(
                        children: const [
                          Text('Warriors'),
                          SizedBox(height: 5),
                          Text('V1.0.0 Dolphin'),
                        ],
                      ),
                    ],
                  ),
                  content: const Text(
                    'Warrior is an application built to make you feel appreciated and have time to meditate for your mental wellbeing ',
                    style: TextStyle(fontSize: 15),
                  ),
                  actions: [
                    CupertinoButton(
                        child: Text(
                          "Close",
                          style:
                              TextStyle(color: Theme.of(context).buttonColor),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        })
                  ],
                ),
              );
            }),
            child: const ListTile(
              leading: Icon(BootstrapIcons.info),
              title: Text('About'),
              subtitle: Text('V1.0.0 Dolphin'),
            ),
          ),
          const ListTile(
            leading: Icon(BootstrapIcons.star),
            title: Text('Rate us'),
            subtitle: Text('Rate us'),
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
                            child: Text(
                              'Ok',
                              style: TextStyle(
                                  color: Theme.of(context).buttonColor),
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
                                style: TextStyle(color: Colors.orange)),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ],
                    );
                  });
            },
            child: const ListTile(
              leading: Icon(BootstrapIcons.box_arrow_left),
              title: Text('Log out'),
              subtitle: Text('log out '),
            ),
          ),
        ],
      ),
    );
  }
}
