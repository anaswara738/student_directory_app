import 'package:flutter/material.dart';

class Homee extends StatelessWidget {
  const Homee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 226, 132, 207),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Student directory",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 226, 132, 207),
        foregroundColor: const Color.fromARGB(228, 0, 0, 0),onPressed: () {
          
        },child: Icon(Icons.add_rounded),
      ),
    );
  }
}
