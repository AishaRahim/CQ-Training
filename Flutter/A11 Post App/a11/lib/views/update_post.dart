import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/update_post.dart';

class UpdatePostPage extends StatefulWidget {
  final int id;
  final String title;
  final String body;

  const UpdatePostPage(
      {super.key, required this.id, required this.title, required this.body});

  @override
  State<UpdatePostPage> createState() => _UpdatePostPageState();
}

class _UpdatePostPageState extends State<UpdatePostPage> {
  final UpdatePostController updatePostController = UpdatePostController();
  final TextEditingController titlecontroller = TextEditingController();
  final TextEditingController bodycontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    titlecontroller.text = widget.title;
    bodycontroller.text = widget.body;
  }

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
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: titlecontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                  // focusedBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(30),
                  //     borderSide: const BorderSide(color: Color(0xff97BDFF))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: bodycontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[300],
              ),
              child: TextButton(
                onPressed: () {
                  updatePostController.controllerUpdatePost(widget.id.toString(),titlecontroller.text,bodycontroller.text);
                },
                child: Text(
                  'Update',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontStyle: FontStyle.normal)),
                ),
              ),
            )
            ],
          )),
    );
  }
}
