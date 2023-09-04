// import 'package:badges/badges.dart' as Badge;
import 'package:a11/views/add_post_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../controllers/home_controller.dart';
import 'comments_page.dart';
import 'single_postdetail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    homeController.controllerGetAll();
  }

  bool pressButton1 = false;
  bool pressButton2 = false;
  bool pressButton3 = false;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => homeController.isLoading.isTrue
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              body: Column(
                children: [
                  Container(
                      height: 60,
                      margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(80)),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () =>
                                setState(() => pressButton1 = !pressButton1),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: pressButton1
                                    ? Colors.grey[300]
                                    : Colors.black,
                              ),
                              child: Center(
                                  child: Text(
                                "For You",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: pressButton1
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          InkWell(
                            onTap: () =>
                                setState(() => pressButton2 = !pressButton2),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: pressButton2
                                    ? Colors.grey[300]
                                    : Colors.black,
                              ),
                              child: Center(
                                  child: Text(
                                "Trending",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: pressButton2
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 47,
                          ),
                          InkWell(
                            onTap: () =>
                                setState(() => pressButton3 = !pressButton3),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: pressButton3
                                    ? Colors.grey[300]
                                    : Colors.black,
                              ),
                              child: Center(
                                  child: Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: pressButton3
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              )),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                    child: ListView.builder(
                      itemCount: homeController.postList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          color: Colors.white,
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Get.to(PostDetailPage(
                                    id: homeController.postList[index].id!,
                                  ));
                                },
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/iconsUser.png"),
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
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Text(
                                              "10m ago",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        ReadMoreText(
                                          trimLines: 2,
                                          colorClickableText: Colors.grey,
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText: 'Read more',
                                          trimExpandedText: ' Show less',
                                          homeController.postList[index].title!,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                        ReadMoreText(
                                          trimLines: 2,
                                          colorClickableText: Colors.grey,
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText: 'Read more',
                                          trimExpandedText: ' Show less',
                                          homeController.postList[index].body!,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/images/post.jpg',
                                        )),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Badge(
                                    // backgroundColor: Colors.black,
                                    label: Text(
                                      homeController.postList.length.toString(),
                                      style: const TextStyle(fontSize: 10),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        Get.to(CommentsPage(
                                          id: homeController
                                              .postList[index].id!,
                                        ));
                                      },
                                      icon: const Icon(
                                        Icons.messenger,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Get.to(const AddPostPage());
                },
                child: const Icon(Icons.add),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Profile'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Settings')
                ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
            ),
    );
  }
}
