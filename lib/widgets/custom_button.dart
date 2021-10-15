import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({ Key? key, required this.label,required this.onTap }) : super(key: key);
  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return       GestureDetector(
      onTap: (){
        onTap.call();
      },
      child: Container(
              width: 300,
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16)
              ),
              child: CustomText(label, size: 22, color: Colors.white, weight: FontWeight.w700,),
            ),
    );
  }
}