import 'package:eslamytask/Home/tabs/radiodetails/radio_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
class RadioTab extends StatelessWidget {
    RadioTab({super.key});
    List<String> radioName = [
    "Radio Ibrahim Al-Akdar",
    "Radio Al-Qaria Yassen",
    "Radio Ahmed Al-Trabulsi",
    "Radio Addokali Mohammad Alalim",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/header.png"),
            ToggleSwitch(
              minWidth:185,
              minHeight: 40,
              initialLabelIndex: 1,
              cornerRadius: 12,
              activeFgColor: Colors.black,
              inactiveBgColor: Color.fromRGBO(32, 32, 32, 0.7),
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: ['Radio', 'Reciters'],
              activeBgColors: [[Color.fromRGBO(226, 190, 127, 1)],[Color.fromRGBO(226, 190, 127, 1)]],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: radioName.length,
                itemBuilder: (context, index) {
                  return RadioDetails(radioName: radioName[index]);
                },
              ),
            ),
          ]
      ), // Column
    ); // Center
  }
}
