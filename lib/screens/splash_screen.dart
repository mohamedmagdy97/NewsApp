import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home.dart';

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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(decoration: BoxDecoration(color: Colors.teal[600])),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 55,
                      child: Icon(
                        Icons.menu_book,
                        color: Colors.teal[600],
                        size: 70,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('News', style: Theme.of(context).textTheme.headline2),
                        Text('App', style: Theme.of(context).textTheme.headline3)
                      ],
                    ),
                    /*Container(
                      alignment: Alignment.center,
                      child: Text(
                        'أخبارك',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),*/
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        // 'We wish you happy news!',
                        ' (:  نتمنى لك أخبار سعيده',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
