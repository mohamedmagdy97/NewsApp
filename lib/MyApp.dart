import 'package:flutter/material.dart';
import 'package:news_app/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.white,
        fontFamily: 'Cairo',
      ),
      home: SplashScreen(),
    );
  }
}