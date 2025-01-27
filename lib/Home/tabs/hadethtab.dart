import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/header.png"),]
      ), // Column
    ); // Center
  }
}
