// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => PpageState1();
}

class PpageState1 extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page1',style: GoogleFonts.oswald(textStyle: const TextStyle(fontSize: 30))
        ),
      ),
      appBar: AppBar(
        title: Text('Welcome Home', style: GoogleFonts.abhayaLibre(textStyle:  TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: Colors.blueGrey[700],
        )),),
        backgroundColor: Colors.lightGreenAccent,
      ),
    );
  }
}