import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/add_post.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  final AddPostController addPostController = Get.put(AddPostController());
  final TextEditingController userID = TextEditingController();
  final TextEditingController title = TextEditingController();
  final TextEditingController body = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Post',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 12,
                  color: Color(0xff97BDFF),
                  fontStyle: FontStyle.normal)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: userID,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                  hintText: 'User ID',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff97BDFF),
                          fontStyle: FontStyle.normal))),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: title,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                  hintText: 'Title',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff97BDFF),
                          fontStyle: FontStyle.normal))),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: body,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xff97BDFF))),
                  hintText: 'Content',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff97BDFF),
                          fontStyle: FontStyle.normal))),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[300],
              ),
              child: TextButton.icon(
                onPressed: () {
                  addPostController.controllerAddPost(userID.text,title.text,body.text);
                  Get.to(const AddPostPage());
                },
                icon: const Icon(Icons.upload_sharp),
                label: Text(
                  'Post',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontStyle: FontStyle.normal)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
