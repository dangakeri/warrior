import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Onboarding/splash_screen.dart';
import 'consts/app_colors.dart';

Future<void> main() async {
  //Sets the morning Notifications
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize a new Firebase App instance
  // await Firebase.initializeApp();
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
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.blue,
        systemNavigationBarColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Warriors',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
      ),
      home: const SplashScreen(),
    );
  }
}
