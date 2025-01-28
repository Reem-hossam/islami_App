import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/header.png"),
            SizedBox(height: 4),
            Container(
              width: 390,
              height: 301,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),color: Color.fromRGBO(226, 190, 127, 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("16 Jul,\n 2024 ",style: TextStyle(fontSize: 16, color: Colors.white,),),
                      Text("Pray Time\n Tuesday",style: TextStyle(fontSize:20, color: Color.fromRGBO(32, 32, 32, 0.9),),),
                      Text("09 Muh,\n 1446 ",style: TextStyle(fontSize: 16, color: Colors.white,),),
                    ],),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Next Pray - 02:32"),
                      Icon(Icons.volume_off_rounded)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 8),
            Text("Azkar",style: TextStyle(color: Colors.white),),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  border: Border.all(color:Color.fromRGBO(226, 190, 127, 1),width: 2),
                  color: Color.fromRGBO(32, 32, 32, 1)
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/evening.png"),
                    Text("Evening Azkar",style: TextStyle(color: Colors.white,fontSize:20 ),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  border: Border.all(color:Color.fromRGBO(226, 190, 127, 1) ,width: 2),
                  color: Color.fromRGBO(32, 32, 32, 1)
              ),
                child: Column(
                  children: [
                    Image.asset("assets/images/morning.png"),
                    Text("Morning Azkar",style: TextStyle(color: Colors.white,fontSize:20))
                  ],
                ),),
            ],)
          ]
      ), // Column
    ); // Center
  }
}
Widget prayerTimeTile(String name, String time, bool isHighlighted) {
  return Container(
    decoration: BoxDecoration(
      color: isHighlighted ? Colors.amber : Colors.grey[200],
      borderRadius: BorderRadius.circular(8.0),
    ),
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: isHighlighted ? Colors.black : Colors.grey[700],
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          time,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isHighlighted ? Colors.black : Colors.black,
          ),
        ),
      ],
    ),
  );
}
