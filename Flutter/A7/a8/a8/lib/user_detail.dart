import 'package:a8/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UserDetailPage extends StatefulWidget {
  final SampleData js;

  const UserDetailPage({super.key, required this.js});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.tealAccent ,
        width: 500,
        height: 400,
        child: Column(
          children: [
            Container(
              child: ClipOval(
                child: Image.asset('assets/images/user.jpg',
                width: 70,
                height: 70,
                
                
                ),
              ),
            ),
            Text(widget.js.name!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
            const SizedBox(height: 10,),
            Text(widget.js.email!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
            const SizedBox(height: 10,),
            Text(widget.js.phone!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}