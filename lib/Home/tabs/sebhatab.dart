import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

  int counter=0;
  int i=1;
  double angle=0;


  List<String> arr=["سبحان الله","الحمد لله","الله اكبر"];


  void handleSephaTap() {
    counter++;
    angle += 360/4;
    if(counter % 33 == 0){
      i = (i -1);
      counter=0;
    }
    setState(() {

    });
  }

  @override
      Widget build(BuildContext context) {
        return  Column(
          children: [
            Image.asset("assets/images/header.png"),
            Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",style: TextStyle(
              color: Colors.white,fontSize: 36,fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 40,),
            Image(image: AssetImage("assets/images/q.png"),height:86,width:145,),
            Center(
              child: Container(
                width: 379,
                height: 381,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/sebhabody.png"),
                    )
                ),
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                  child: Text("سبحان الله \n      $counter",
                    style: TextStyle(
                      color: Colors.white, fontSize: 36,
                      fontWeight: FontWeight.w700, fontFamily: "Janna LT",
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                  ),
                ),
              ),
            ),
    ]
        );
      }
    }
