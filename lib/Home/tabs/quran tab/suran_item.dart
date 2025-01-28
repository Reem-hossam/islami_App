import 'package:flutter/cupertino.dart';

class SuranItem extends StatelessWidget {
  String nameEn;
  String nameAr;
  int index;
  int numOfVerses;
   SuranItem({ required this.nameEn,
    required this.nameAr,
    required this.index,
    required this.numOfVerses,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   decoration:BoxDecoration(
     color: Color.fromRGBO(226, 190, 127, 1)
   ),
      child: Row(
        children: [
          Column(
            children: [
              Text(nameEn),
              Text(nameAr),
              Text("${numOfVerses}verse"),
            ],
          ),
          Image(image: AssetImage("assets/images/re.png"))
        ],
      ),
    );
  }
}