import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioDetails extends StatefulWidget {
    final String radioName;
   RadioDetails({super.key, required this.radioName});

  @override
  State<RadioDetails> createState() => _RadioDetailsState();
}

class _RadioDetailsState extends State<RadioDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 390,
      height: 141,
      margin:EdgeInsets.only(bottom:8,top:18,right: 20,left: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(226, 190, 127, 1),image:DecorationImage(image: AssetImage("assets/images/soundWave"),fit:BoxFit.cover)
      ),

      child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Text(
                widget.radioName,
                style: TextStyle(color:Colors.black,fontSize: 20, fontWeight:FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.play_arrow, color: Colors.black,size:60,),
                  onPressed: () {
                    setState(() {
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.volume_up_rounded, color: Colors.black,size:40,),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ],
        ),
    );
  }
}
