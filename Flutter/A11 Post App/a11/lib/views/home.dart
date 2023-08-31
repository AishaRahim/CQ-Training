import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          child: Text('HI HELLOOO',style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
        ),
      ),
    );
  }
}