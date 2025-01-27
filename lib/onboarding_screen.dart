
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'Home/home_screen.dart';

class OnboardingScreen extends StatelessWidget {

  static const String routName = "/";

  const OnboardingScreen({super.key});

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle =GoogleFonts.elMessiri;

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,color: Color.fromRGBO(226, 190, 127, 1)),
      bodyTextStyle: TextStyle(fontSize: 20,fontWeight:FontWeight.w700,color: Color.fromRGBO(226, 190, 127, 1)),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color.fromRGBO(32, 32, 32, 1),
      imagePadding: EdgeInsets.only(top:243, ),
      imageFlex: 4,
    );
    return IntroductionScreen(
      dotsFlex: 2,
      dotsDecorator: DotsDecorator(
          color: Colors.white,
          activeColor:  Color.fromRGBO(226, 190, 127, 1) ),
      globalBackgroundColor:Color.fromRGBO(32, 32, 32, 1),
      allowImplicitScrolling: true,
      autoScrollDuration: 10000,
      infiniteAutoScroll: true,


      onDone: () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
      done: Text("Finish",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w700,color: Color.fromRGBO(226, 190, 127, 1)),),
      showDoneButton: true,
      showNextButton: true,
      next: Text("Next",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w700,color: Color.fromRGBO(226, 190, 127, 1)),),
      back: Text("Back",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w700,color: Color.fromRGBO(226, 190, 127, 1)),),
      showBackButton: true,

      globalHeader: Align(
        alignment: Alignment.center,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:16,bottom: 39),
            child: _buildImage("header.png"),
          ),
        ),
      ),

      pages: [
        PageViewModel(
          title: "Welcome To Islmi App",
          body:"",
          image: _buildImage("Frame2.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome To Islami",
          body:
          "We Are Very Excited To Have You In Our Community",
          image: _buildImage('Frame1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body: "Read, and your Lord is the Most Generous",
          image: _buildImage('Frame3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Bearish",
            body: "Praise the name of your Lord, the Most High.",
            image: _buildImage('Frame4.png'),
            decoration: pageDecoration
          //.copyWith(
          //  contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          //fullScreen: true,
          // bodyFlex: 2,
          // imageFlex: 3,
          // safeArea: 100,
          // ),
        ),
        PageViewModel(
            title: "Holy Quran Radio",
            body: "You can listen to the Holy Quran Radio through the application for free and easily",
            image: _buildImage("Frame5.png"),
            decoration: pageDecoration

        ),
      ],

    );


  }

}
