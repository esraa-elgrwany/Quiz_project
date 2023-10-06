import 'package:flutter/material.dart';

class Content extends StatelessWidget{
String img;
String txt1;
String txt2;
String txt3;
Content(this.img,this.txt1,this.txt2,this.txt3);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(img),
            Text(txt1,style: TextStyle(fontSize: 12),),
          ],
        ),
        Row(
          children: [
            Text(txt2,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            Text(txt3,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
          ],
        )
      ],
    );
  }
}
