import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations_themes_custom_painter/widgets/custom_text.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({Key? key}) : super(key: key);

  @override
  _TweenAnimationExampleState createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  var _angle = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Transform Widget', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: _angle),
              duration: Duration(seconds: 1),
              child: CustomText('🍑', size: 120),
              builder: (context, value, child) {
                return Transform.rotate(angle: value,
                child: child,);
              }),
              SizedBox(height: 20,),
              Slider.adaptive(value: _angle, 
              max: 180,
              min: 0,
              onChanged: (value){
                setState(() {
                _angle = value;
                  
                });
              })
          ],
        ),
      ),
    );
  }
}
