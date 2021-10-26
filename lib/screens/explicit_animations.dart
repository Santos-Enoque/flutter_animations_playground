import 'dart:async';
import 'package:flutter/material.dart';

class BouncingBallDemo extends StatefulWidget {
  @override
  _BouncingBallDemoState createState() => _BouncingBallDemoState();
}

class _BouncingBallDemoState extends State<BouncingBallDemo> {
  late double marginTop;

  void changePosition(Timer t) async {
    setState(() {
      marginTop = marginTop == 0 ? 100 : 0;
    });
  }

  @override
  void initState() {
    super.initState();
    marginTop = 0;
    Timer.periodic(const Duration(seconds: 1), changePosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Explicit Animations', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: marginTop),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                width: 40.0,
                height: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
