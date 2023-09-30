import 'package:flutter/material.dart';
import 'package:quiz_project/Thirdscreen.dart';

class SecondScreen extends StatelessWidget{
 static const String routeName="secondScreen";
int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                 children: [
                   Image.asset("assets/images/profile.jpg"),
                 ],
                ),
                SizedBox(width: 8,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello,jade",style: TextStyle(fontSize: 15),),
                    SizedBox(height: 10,),
                    Text("Ready to workout today",style: TextStyle(fontSize:20,fontWeight: FontWeight.w500),),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Badge(
                      child: Image.asset("assets/images/badge1.jpg",width: 30,),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
     bottomNavigationBar:  BottomNavigationBar(
       type: BottomNavigationBarType.shifting,
       currentIndex: index,
       onTap: (value) {
         index = value;
       },
       selectedItemColor: Colors.green,
       unselectedItemColor: Colors.grey,
       items: [
         BottomNavigationBarItem(
             icon: IconButton(
                 onPressed: () {
                   Navigator.pushNamed(context, ThirdScreen.routeName);
                 },
                 icon: Icon(Icons.home,size: 30,)),
             label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.navigation_outlined,size: 30,), label: ""),
         BottomNavigationBarItem(
             icon: Icon(Icons.bar_chart,size:30,), label: ""),
         BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,), label: ""),
       ],
     ),
    );
  }
}
