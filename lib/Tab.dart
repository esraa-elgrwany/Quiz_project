import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  String btntxt;
  String txt1;
  String txt2;
  String txt3;
  String img;
 TabView(this.btntxt,this.txt1,this.txt2,this.txt3,this.img);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFE4E7EC),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                        children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 68,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFCFCFD),
                                              borderRadius: BorderRadius.circular(18),
                                            ),
                                            child: Center(child: Text(btntxt,style: TextStyle(
                                              fontWeight: FontWeight.w400,fontSize: 14
                                            ),)),
                                          ),
                                          SizedBox(height: 3,),
                                          Text(txt1,style: TextStyle(
                                              fontWeight: FontWeight.w600,fontSize: 20
                                          ),),
                                          Row(
                                            children: [
                                              Text(txt2,style: TextStyle(
                                                 fontSize: 12
                                              ),),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.access_time_outlined,size: 20),
                                              SizedBox(width: 3,),
                                              Text(txt3,style: TextStyle(
                                                 fontSize: 12
                                              ),),
                                            ],
                                          )
                                        ],
                                      ),
                              ),

                       Expanded(
                         child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Image.asset(img),
                                    ],
                                  ),
                       ),

                        ],
                      ),
      ),
    );
  }
}
