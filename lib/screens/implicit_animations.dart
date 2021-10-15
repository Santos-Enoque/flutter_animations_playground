import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations_themes_custom_painter/widgets/custom_button.dart';
import 'package:flutter_animations_themes_custom_painter/widgets/custom_text.dart';

class ImplicitAnimationsExample extends StatefulWidget {
  const ImplicitAnimationsExample({ Key? key }) : super(key: key);

  @override
  _ImplicitAnimationsExampleState createState() => _ImplicitAnimationsExampleState();
}

class _ImplicitAnimationsExampleState extends State<ImplicitAnimationsExample> {
  var _width = 120.0;
  var _height = 140.0;
  var _opacity = 0.0;
  var  _angle = 0.0;
  var _animationDuration = Duration(milliseconds: 400);
  late Color _color;
  late double _borderRadius;
  late double _margin;


  @override
  void initState() {
    super.initState();
    _color = Colors.blue;
    _borderRadius = 2;
 
  }

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('implicit Animations', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: _width,
          height: _height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_borderRadius)
          ),
         ),

         SizedBox(height: 20,),
         CustomButton(onTap: (){
         }, label: ' Change look 👀',),

        SizedBox(height: 20,),
        CustomButton(onTap: (){
          
         }, label: ' Change Size 🤏🏻',),
        SizedBox(height: 20,),
         CustomButton(onTap: (){
         
         }, label: ' Rotate 🔁',),
        SizedBox(height: 20,),
      ],      
    ),
    );
  }
}