// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nav.dart';


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page2',style: GoogleFonts.oswald(textStyle: const TextStyle(fontSize: 30))
        ),
      ),
      appBar: AppBar(
        title: Text('Settings', style: GoogleFonts.abhayaLibre(textStyle:  TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: Colors.blueGrey[700],
        )),),
        backgroundColor: Colors.lightGreenAccent,
      ),
            bottomNavigationBar: const MyNav()

    );
  }
}