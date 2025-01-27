
import 'package:eslamytask/Home/tabs/hadethtab.dart';
import 'package:eslamytask/Home/tabs/quran%20tab/qurantab.dart';
import 'package:eslamytask/Home/tabs/radiodetails/radiotab.dart';
import 'package:eslamytask/Home/tabs/sebhatab.dart';
import 'package:eslamytask/Home/tabs/timetab.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="Home";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/${getBg()}.png"),
              fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavBar(onChange: (index){
          currentIndex=index;
          setState(() {

          });

        }),
        body: tabs[currentIndex],
      ),
    );
  }

  List<Widget>tabs = [
    Qurantab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];

  String getBg() {
    switch (currentIndex) {
      case 0:
        return "home_bg";
      case 1:
        return "hadeth_bg";
      case 2:
        return "sebha_bg";
      case 3:
        return "radio_bg";
      case 4:
        return "time_bg";
      default:
        return "home_bg";
    }
  }
}
