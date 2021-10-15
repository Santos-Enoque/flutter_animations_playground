import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animations_themes_custom_painter/screens/flutter_transform.dart';
import 'package:flutter_animations_themes_custom_painter/screens/implicit_animations.dart';
import 'package:flutter_animations_themes_custom_painter/screens/tween_animation.dart';
import 'package:flutter_animations_themes_custom_painter/widgets/custom_text.dart';

import 'flutter_curves.dart';
import 'flutter_matrix_four.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Flutter App Design', style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CustomText('👉', size: 30,),
            title: CustomText('Implicit Animated', size: 18,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => ImplicitAnimationsExample()));
            },
          ),
          Divider(),
             ListTile(
            leading: CustomText('👉', size: 30,),
            title: CustomText('Flutter transform', size: 18,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => FlutterTransformExample()));
            },
          ),
             Divider(),
             ListTile(
            leading: CustomText('👉', size: 30,),
            title: CustomText('Flutter Matrix4', size: 18,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => FlutterMatrixFourExample()));
            },
          ),
              Divider(),
             ListTile(
            leading: CustomText('👉', size: 30,),
            title: CustomText('Flutter Animation curves', size: 18,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => FlutterCurvesExample()));
            },
          ),
                 Divider(),
             ListTile(
            leading: CustomText('👉', size: 30,),
            title: CustomText('Flutter Tween Animations', size: 18,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => TweenAnimationExample()));
            },
          ),

    
        ],
      ),
    );
  }
}