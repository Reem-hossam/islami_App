import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Number extends StatelessWidget {

  String nameEn;
  String nameAr;
  int index;
  int numOfVerses;
  Number({   required this.nameEn,
  required this.nameAr,
  required this.index,
  required this.numOfVerses,super.key});


 //1:07:43
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
    children: [
      Image.asset("assets/images/number.png",),
      Text("$index",style: TextStyle(
        color:Colors.white,
        fontSize: 20,
      ),),
    ]),
      SizedBox(
        width: 16,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nameEn,style: TextStyle(
              color:Colors.white,
              fontSize: 20,
            ),),
            Text("$numOfVerses",style: TextStyle(
              color:Colors.white,
              fontSize: 20,
            ),)
          ],
        ),
      ),
      Text(nameAr,style: TextStyle(
        color:Colors.white,
        fontSize: 20,
      ),)],
    );
  }
}
