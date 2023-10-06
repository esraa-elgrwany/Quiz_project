import 'package:flutter/material.dart';
import 'package:quiz_project/container.dart';
import 'package:quiz_project/secondscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int index=0;
  int currentPage = 0;
  final img = [
   Image.asset(
          "assets/images/sliderimage.png",
     width: double.infinity,
     fit: BoxFit.cover,
        ),
 Image.asset("assets/images/sliderimage.png",
          width: double.infinity,
          fit: BoxFit.cover,
           ),
    Image.asset(
          "assets/images/sliderimage.png",
        width: double.infinity,
          fit: BoxFit.cover,
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Moody",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.black),
                ),
                Spacer(),
                Badge(
                  child: Image.asset(
                    "assets/images/bell-02.png",
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Hello, Sara Rose",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "How are you doing today ?",
                        style: TextStyle(
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/images/love.png",
                                    ),
                                    Image.asset(
                                      "assets/images/cool.png",
                                    ),
                                    Image.asset(
                                      "assets/images/happy.png",
                                    ),
                                    Image.asset(
                                      "assets/images/sad.png",
                                    ),
                                    Image.asset(
                                      "assets/images/stress.png",
                                    ),
                                  ],
                                ),
                            ),
                             Expanded(
                               child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Love",style: TextStyle(fontSize: 14),),
                                    Text("Cool",style: TextStyle(fontSize: 14),),
                                    Text("Happy",style: TextStyle(fontSize: 14),),
                                    Text("Sad",style: TextStyle(fontSize: 14),),
                                    Text("Stress",style: TextStyle(fontSize: 14),),
                                  ],
                                ),
                             ),
                          ],
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Features",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: TextStyle(
                            color: Color(0xFF027A48),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xFF027A48),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: CarouselSlider(
                                items: img,
                                options: CarouselOptions(
                                  aspectRatio: 16 / 9,
                                  viewportFraction: 0.8,
                                  initialPage: 0,
                                  autoPlay: true,
                                  height: 400,
                                  autoPlayInterval: Duration(seconds: 2),
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 500),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enlargeCenterPage: true,
                                  onPageChanged: (index, reason) {
                                    currentPage=index;
                                  },
                                  //aspectRatio: .2,
                                ),
                          ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Exercise",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: TextStyle(
                            color: Color(0xFF027A48),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xFF027A48),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Con("Relaxation", "assets/images/relax.png",
                                  Color(0xFFF9F5FF)),
                              SizedBox(
                                width: 30,
                              ),
                              Con("Meditation", "assets/images/meditation.png",
                                  Color(0xFFFDF2FA)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Con("Beathing", "assets/images/breath.png",
                                  Color(0xFFFFFAF5)),
                              SizedBox(
                                width: 30,
                              ),
                              Con("Yoga", "assets/images/yoga.png",
                                  Color(0xFFF0F9FF)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          color: Colors.green,
          fontSize: 15,
        ),
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SecondScreen.routeName);
                  },
                  child: ImageIcon(AssetImage("assets/images/home1.png"))),
              label: "*"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/grid-01.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/calendar.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/user-03.png")),
              label: ""),
        ],
      ),
    );
  }
}
