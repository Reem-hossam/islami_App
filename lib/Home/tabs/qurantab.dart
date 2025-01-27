import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qurantab extends StatelessWidget {
  const Qurantab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/header.png'),
          TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: "Sura Name",
                prefixIcon: ImageIcon(AssetImage("assets/images/quran_icon.png"),color: Color.fromRGBO(226, 190, 127, 1),),
                hintStyle: GoogleFonts.elMessiri(
                    color: Colors.white,
                    fontSize: 16, fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFE2BE7F))), // Out
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFE2BE7F))), // Out
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFE2BE7F)), // OutlineInputBorder
                ),// TextField
              )
          ),
          SizedBox(height: 20,),
          Text(
              "Most Recently", style: GoogleFonts.elMessiri(
              color: Colors.white
          )
          ),
        ],
      ),
// Column
    ); // Padding // Center
  }
}
