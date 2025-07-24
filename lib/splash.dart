import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:student_directory_app/home.dart';

class Splashh extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),() {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Homee()),);});
      return Scaffold(
        body: Center(child: Lottie.asset("assets/Book with bookmark.json")),
      );   
  }
}