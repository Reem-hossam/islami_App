import 'package:eslamytask/Home/tabs/ahadeth/hadethmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';


class HadethTab extends StatefulWidget {
   HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allAhadeth=[];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadHadethFile();
    }
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           // Image.asset("assets/images/header.png"),
            ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  allAhadeth[index].title,
                  style: Theme.of(context).textTheme.bodyMedium,
                );
              },
              itemCount: allAhadeth.length ,
            ),
          ]
      ), // Column
    ); // Center
  }

  loadHadethFile() {

    rootBundle.loadString("assets/files/ahadeth.txt").then(
            (file) {
          List<String> ahadeth = file.split("*");
          for (String data in ahadeth) {
            List<String> lines = data.trim().split("\n");
            String title = lines[0];
            lines.removeAt(0);
            List<String> content = lines;
            HadethModel hadethModel=HadethModel(
                title: title,
                content: content
            );
          }
          setState(() {

          });

        }).catchError(
            (error) {
          print("Error $error");
        });
  }
}
