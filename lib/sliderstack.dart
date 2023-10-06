import 'package:flutter/material.dart';

class SliderStack extends StatelessWidget{
  String img;
  String txt1;
  int txtColor;
  int conColor;
  String txt2;
SliderStack(this.img,this.txt1,this.conColor,this.txtColor,this.txt2);
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Image.asset(
                img,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

            Positioned(
              left: 15,
              top: 33,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                     color: Color(conColor),
                    ),
                    child: Center(
                      child: Text(txt1,style: TextStyle(
                        color: Color(txtColor),
                        fontSize: 14,
                       // fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(txt2,style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),)
                ],
              ),
            )
          ],
    );
  }
}
