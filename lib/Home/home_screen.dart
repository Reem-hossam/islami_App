
import 'package:eslamytask/Home/tabs/hadethtab.dart';
import 'package:eslamytask/Home/tabs/qurantab.dart';
import 'package:eslamytask/Home/tabs/radiotab.dart';
import 'package:eslamytask/Home/tabs/sebhatab.dart';
import 'package:eslamytask/Home/tabs/timetab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="Home";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/${getBg()}.png"),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(226, 190, 127, 1),
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex=value;
            setState(() {

            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,

          items:[
            BottomNavigationBarItem(icon:_buildNavItem("quran_icon", 0),label: "Quran"),
            BottomNavigationBarItem(icon:_buildNavItem("hadeth_icon",1),label: "Hadith "),
            BottomNavigationBarItem(icon:_buildNavItem("sebha_icon",2),label: " Sebha"),
            BottomNavigationBarItem(icon:_buildNavItem("radio_icon",3),label: " Radio"),
            BottomNavigationBarItem(icon:_buildNavItem("time_icon",4),label: " Time"),



          ],
        ),
        body: tabs[currentIndex],
      ),
    );
  }

  List<Widget>tabs=[
    Qurantab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];

  String getBg(){
    switch(currentIndex){
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

  Widget _buildNavItem(String imageName,int index){
    return currentIndex==index ?
    Container(
        padding: EdgeInsets.only(top: 6,bottom: 6,right: 20,left: 20),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(66),
          color: Color.fromRGBO(32, 32, 32, 0.6),),
        child: ImageIcon(AssetImage("assets/images/$imageName.png"))
    )
        :ImageIcon(AssetImage("assets/images/$imageName.png"));
  }
}