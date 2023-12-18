import 'package:bootcamp_pratice/pages/screens/detailscreen/detail_screen.dart';
import 'package:bootcamp_pratice/pages/screens/homescreen/home_screen.dart';
import 'package:bootcamp_pratice/pages/onboarding/onboarding3.dart';
import 'package:bootcamp_pratice/pages/sign_up_screen.dart';
import 'package:bootcamp_pratice/pages/splash/splash_screen.dart';
import 'package:bootcamp_pratice/pages/onboarding/onboarding1.dart';
import 'package:bootcamp_pratice/pages/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/Onboarding1': (context) => const Onboarding1(),
        '/Onboarding2': (context) => const Onboarding2(),
        '/Onboarding3': (context) => const Onboarding3(),
        '/SignUpScreen': (context) =>  SignUpScreen(),
        '/HomeScreen': (context) =>   HomeScreen(),
        '/DetailScreen': (context) =>  const DetailScreen(),
      },
    );
  }
}
