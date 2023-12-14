import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterclaculator/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: 'Flutter',
                  )));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FaIcon(
            FontAwesomeIcons.calculator,
            size: 100,
            color: Colors.greenAccent[400],
          ),
          SizedBox(
            height: 300,
          ),
          Text(
            'from',
            style: TextStyle(fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/rohan.jpg'),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Rohan Shrestha',
                style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
