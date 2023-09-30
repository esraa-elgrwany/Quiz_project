import 'package:flutter/material.dart';
import 'package:quiz_project/container.dart';
import 'package:quiz_project/secondscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  int current = 0;
  final img = [
    Image.asset("assets/images/slide.jpg",fit: BoxFit.cover,width: double.infinity,),
    Image.asset("assets/images/slide.jpg",fit: BoxFit.cover,width: double.infinity,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/quiz1.jpg",
                    width: 40,
                  ),
                  SizedBox(
                    width: 10,
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
                    child: Image.asset("assets/images/badge1.jpg", width: 25),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text("Sara Rose",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "How are you doing today ?",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/eee.jpg",
                  ),
                  Image.asset(
                    "assets/images/emojie2.jpg",
                  ),
                  Image.asset(
                    "assets/images/emoje1.jpg",
                  ),
                  Image.asset(
                    "assets/images/emojie4.jpg",
                  ),
                  Image.asset(
                    "assets/images/emojie3.jpg",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Features",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: TextStyle(
                            color: Color(0xFF027A48),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Color(0xFF027A48), size: 18),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height:120,
                    child: CarouselSlider(
                        items: img,
                        options: CarouselOptions(
                          height: 300,
                          autoPlay: false,
                          viewportFraction: 0.9,
                          autoPlayInterval: Duration(seconds: 2),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 500),
                          aspectRatio: 1.5,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.4,
                          onPageChanged: (index, reason) {
                            setState(() {
                              current = index;
                            });
                          },
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Exercise",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style: TextStyle(
                            color: Color(0xFF027A48),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          color: Color(0xFF027A48), size: 18),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Con("Relaxation", "assets/images/purble.jpg",
                              Color(0xFFB692F6).withOpacity(.4)),
                          SizedBox(
                            height: 10,
                          ),
                          Con("Beathing", "assets/images/orange.jpg",
                              Color(0xFFFEB273).withOpacity(.4)),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Con("Meditation", "assets/images/pink.jpg",
                              Color(0xFFFAA7E0).withOpacity(.4)),
                          SizedBox(
                            height: 10,
                          ),
                          Con("yoga", "assets/images/blue.jpg",
                              Color(0xFF7CD4FD).withOpacity(.4)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
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
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SecondScreen.routeName);
                  },
                  icon: Icon(Icons.home,size: 30,)),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.grid_on,size: 30,), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined,size: 30,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,), label: ""),
        ],
      ),
    );
  }
}
