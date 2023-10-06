import 'package:flutter/material.dart';
import 'package:quiz_project/Tab.dart';
import 'package:quiz_project/Thirdscreen.dart';
import 'package:quiz_project/content.dart';
import 'package:quiz_project/homeScreen.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = "secondScreen";
  int index = 0;
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/Ellipse 10.png"),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Jade",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Ready to workout today",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                      child: Badge(
                        child: Image.asset("assets/images/bell-02.png"),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFFF8F9FC),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Content(
                      "assets/images/heart.png", " Heart Rate", "81 ", "BPM"),
                  Container(
                    width: 5,
                    height:50,
                    child: VerticalDivider(
                      color: Color(0xFFD9D9D9),
                      thickness:2,
                      indent: 2,
                      endIndent:2,
                    ),
                  ),
                  Content("assets/images/list.png", " To-do", "32,5 ", "%"),
                  Container(
                    width: 5,
                    height: 50,
                    child: VerticalDivider(
                      color: Color(0xFFD9D9D9),
                      thickness: 2,
                      indent: 2,
                      endIndent:2,
                    ),
                  ),
                  Content("assets/images/Vector.png", " calo", "1000 ", "cal"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Workout Programs",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(12)
                      ),
                     
                      child: TabBar(
                        indicatorColor: Color(0xFF363F72),
                        labelColor: Color(0xFF363F72),
                        unselectedLabelColor: Color(0xFF667085),
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                        tabs: [
                          Tab(
                            text: "All Type",
                          ),
                          Tab(
                            text: "Full Body",
                          ),
                          Tab(
                            text: "Upper",
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TabView("7 days","Morning Yoga","Improve mental focus.",
                      "30 mins","assets/images/[removal 2.png"),
                  SizedBox(
                    height: 20,
                  ),
                  TabView("3 days","Plank Exercise","Improve posture and stability.",
                  "30 mins","assets/images/pngwing 1.png"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (value) {
          index = value;
        },
        selectedItemColor: Color(0xFF363F72),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ThirdScreen.routeName);
                  },
                  child: ImageIcon(AssetImage("assets/images/home-05.png"))),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/navigation-pointer-01.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/bar-chart-07.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/user-03.png")),
              label: ""),
        ],
      ),
    );
  }
}
