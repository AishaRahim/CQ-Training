import 'package:a11/views/update_post.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/single_post_controller.dart';

class PostDetailPage extends StatefulWidget {
  final int id;
  const PostDetailPage({super.key, required this.id});

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  final SinglePostController singlePostController =
      Get.put(SinglePostController());

  @override
  void initState() {
    super.initState();
    singlePostController.controllerGetSingle(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => singlePostController.isLoading.isTrue
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            appBar: AppBar(
              title: Text(
                'Your Post',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                )),
              ),
              actions: [
                TextButton.icon(
                  onPressed: () {
                    Get.to(UpdatePostPage(
                      id: widget.id,
                      body: singlePostController.singlePost.value.body!,
                      title: singlePostController.singlePost.value.title!,
                    ));
                  },
                  icon: const Icon(Icons.edit_note),
                  label: Text(
                    "Update Post",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                )
              ],
            ),
            body: Card(
              margin: const EdgeInsets.all(20),
              color: Colors.white,
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
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "10m ago",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(singlePostController.singlePost.value.title!,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 30, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(singlePostController.singlePost.value.body!,
                          // textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize:15, color: Colors.grey[800]),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/post.jpg',
                          )),
                    ],
                  )
                ],
              ),
            ),
          ));
  }
}
