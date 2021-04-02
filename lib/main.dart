import 'package:flutter/material.dart';
import 'package:news_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter NewsApp',
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        accentColor: Colors.white,
        // primarySwatch: Colors.teal,
        textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle(
            fontSize: 22,
            fontFamily: 'Cairo',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 30,
            fontFamily: 'Cairo',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          headline3:  TextStyle(
            fontSize: 30,
            fontFamily: 'Cairo',
            color: Colors.greenAccent[200],
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            fontSize: 14,
            fontFamily: 'Cairo',
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          subtitle2: TextStyle(
              fontSize: 20,
              fontFamily: 'Cairo',
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
          bodyText1: TextStyle(
            fontSize: 12,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.normal,
            // color: Colors.lightGreenAccent,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}

