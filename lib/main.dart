import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:payhere_demo/screeens/dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BringMe',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset('assets/logo.png'),
        nextScreen: const Dashboard(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.white,
        splashIconSize: 250,
      ),
    );
  }
}
