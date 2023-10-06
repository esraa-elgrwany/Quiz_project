import 'package:flutter/material.dart';

class Btn extends StatelessWidget{
  String txt;
  int txtColor;
  int color;
  int borderColor;
  Btn(this.txt,this.txtColor,this.color,this.borderColor);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {

    }, child: Text(txt,style: TextStyle(
      color:Color(txtColor),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),),
      style: ElevatedButton.styleFrom(
        backgroundColor:Color(color),
        padding: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(borderColor),
          ),
          borderRadius: BorderRadius.circular(20),
        )
      )
    );
  }
}
