
import 'package:flutter/material.dart';
import 'package:flutter_animations_themes_custom_painter/widgets/custom_button.dart';

class FlutterTransformExample extends StatefulWidget {
  const FlutterTransformExample({ Key? key }) : super(key: key);

  @override
  _FlutterTransformExampleState createState() => _FlutterTransformExampleState();
}

class _FlutterTransformExampleState extends State<FlutterTransformExample> {
 

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
        children: [
          SizedBox(height: 70,),
        
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(.5),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Align(
              child: Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(.5),
                borderRadius: BorderRadius.circular(8)
              ),
                      ),
            ),
          ),
       
        ],      
          ),
      ),
    );
  }
}
