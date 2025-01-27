import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  Function onChange;
  BottomNavBar ({required this.onChange,super.key});


  @override
  State<BottomNavBar> createState() => _BottomNavBarState();


}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(226, 190, 127, 1),
      currentIndex: currentIndex,
      onTap: (value) {
        currentIndex=value;

        setState(() {
          widget.onChange(currentIndex);
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
    );
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