import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home.dart';
import 'package:news_app/widgets/BuildWidgetsImports.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Home())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 55,
            child: const Icon(Icons.menu_book, color: Colors.teal, size: 70),
          ),
          BuildAppNameText(),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              // 'We wish you happy news!',
              ' (:  نتمنى لك أخبار سعيده',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
