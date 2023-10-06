import 'package:flutter/material.dart';
import 'package:quiz_project/Thirdscreen.dart';
import 'package:quiz_project/homeScreen.dart';
import 'package:quiz_project/secondscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SecondScreen.routeName:(context) => SecondScreen(),
        ThirdScreen.routeName:(context) => ThirdScreen(),
      },
    );
  }
}

