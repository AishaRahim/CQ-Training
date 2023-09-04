import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/comments_controller.dart';

class CommentsPage extends StatefulWidget {
  final int id;
  const CommentsPage({super.key, required this.id});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final CommentsController commentsController = Get.put(CommentsController());

  @override
  void initState() {
    super.initState();
    commentsController.controllerGetComments(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => commentsController.isLoading.isTrue
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              appBar: AppBar(
                title: Text(
                  'Comments',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 20,
                  )),
                ),
              ),
              body: ListView.builder(

                itemCount: commentsController.commentList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/iconsUser.png"),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  "USER",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Text(
                                  "10m ago",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 10, color: Colors.black,fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          commentsController.commentList[index].name!,
                          style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,)),
                        ),
                        Text(
                          commentsController.commentList[index].body!,
                          style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15,)),
                        ),
                      ],
                    ),
                  );
                },
              )),
    );
  }
}
