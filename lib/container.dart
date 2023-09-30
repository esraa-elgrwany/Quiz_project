import 'package:flutter/material.dart';

class Con extends StatelessWidget{
  String txt;
  String img;
  Color color;
  Con(this.txt,this.img,this.color);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(12),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
          width: 151,
         height: 61,
          child:Row(
            children: [
              Image.asset(img),
              SizedBox(width: 12,),
              Text(txt,style:TextStyle(fontWeight:FontWeight.w500 ,fontSize: 14) ,),
            ],
          )
    );
  }
}

