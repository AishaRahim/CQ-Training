import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/update_post.dart';

class UpdatePostPage extends StatefulWidget {
  final int id;
  final String title;
  final String body;


  const UpdatePostPage({super.key, required this.id, required this.title, required this.body});

  @override
  State<UpdatePostPage> createState() => _UpdatePostPageState();
}

class _UpdatePostPageState extends State<UpdatePostPage> {
  final UpdatePostController updatePostController = UpdatePostController(); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Post',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.normal)),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: [
              
            ],
          )),
    );
  }
}
