import 'package:Warriors/consts/app_colors.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Onboarding/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Sets the morning Notifications

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    AssetsAudioPlayer.setupNotificationsOpenAction((notification) {
      //custom action
      return true; //true : handled, does not notify others listeners
      //false : enable others listeners to handle it
    });
    SystemChrome.setSystemUIOverlayStyle(
      // code for changing the color of status bar color
      SystemUiOverlayStyle(
        statusBarColor: AppColors.blue,
        systemNavigationBarColor: Colors.white,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Warriors',
      theme: ThemeData(
        primaryColor: AppColors.background,
      ),
      home: const SplashScreen(),
    );
  }
}
