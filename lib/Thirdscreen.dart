import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_project/btn.dart';
import 'package:quiz_project/secondscreen.dart';
import 'package:quiz_project/sliderstack.dart';

class ThirdScreen extends StatelessWidget {
  static const String routeName = "thirdScreen";
  int index = 1;
  int currentPage = 0;
  final slide = [
    SliderStack("assets/images/slider1.png", "self-care", 0xFFFEF0C7,
        0xFF93370D, """10 Easy Self-Care Ideas That Can
Help Boost Your Health"""),
    SliderStack("assets/images/Frame 3466530.png", "cycle", 0xFFFEE4E2,
        0xFF912018, """How to take care of Menstrual   
Hygiene during Menstrual Cycle"""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFE4E7EC).withOpacity(.99),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Group.png"),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "AliceCare",
                    style: GoogleFonts.milonga(
                      textStyle: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            SizedBox(
              height: 15,
            ),
             Row(
                      children:[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              label:Text("Articles, Video, Audio and More,...") ,
                              labelStyle: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF667085),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: Color(0xFFD0D5DD),
                                    width: 1,
                                  )),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xFF667085),
                              ),
                            ),
                          ),)
                     ]  ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Btn("Discover", 0xFF6941C6, 0xFFD6BBFB, 0xFFF4EBFF),
                  SizedBox(
                    width: 10,
                  ),
                  Btn("News", 0xFF667085, 0xFFE4E7EC, 0xFFE4E7EC),
                  SizedBox(
                    width: 10,
                  ),
                  Btn("Most Viewed", 0xFF667085, 0xFFE4E7EC, 0xFFE4E7EC),
                  SizedBox(
                    width: 10,
                  ),
                  Btn("Saved", 0xFF667085, 0xFFE4E7EC, 0xFFE4E7EC),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hot topics",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Color(0xFF5925DC),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xFF5925DC),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: double.infinity,
                      child: CarouselSlider(
                        items: slide,
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
                            currentPage = index;
                          },
                          //aspectRatio: .2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get Tips",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 Expanded(
                   child: Container(
                     padding: EdgeInsets.only(top: 10,left: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFE4E7EC),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Image.asset("assets/images/Doctor-PNG-Images 1.png"
                                          ),
                                      ),
                                    ],
                                  ),
                            ),

                            Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        """Connect with doctors & 
get suggestions""",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        """Connect now and get 
expert insights""",
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "View detail",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF7F56D9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadiusDirectional.circular(
                                                      12),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                          ],
                        ),
                      ),
                 ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      children: [
                        Text(
                          "Cycle Phases and Period",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xFF5925DC),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xFF5925DC),
                        ),
                      ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (value) {
          index = value;
        },
        selectedItemColor: Color(0xFF7F56D9),
        unselectedItemColor: Color(0xFF475467),
        selectedLabelStyle: TextStyle(
          color: Color(0xFF7F56D9),
          fontSize: 12,
        ),
        unselectedLabelStyle:  TextStyle(
          color: Color(0xFF475467),
          fontSize: 12,
        ),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/calendar.png")),
              label: "Today"),

          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SecondScreen.routeName);
                  },
                  child: ImageIcon(AssetImage("assets/images/grid3.png"))),
              label: "Insights",
          ),

          BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage("assets/images/message-square-01.png")),
              label: "Chat"),
        ],
      ),
    );
  }
}
