import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';
import 'page_postdetail.dart';

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

  @override
  Widget build(BuildContext context) {
    return Obx(() => homeController.isLoading.isTrue
        ? const Center(child: CircularProgressIndicator()) 
        : Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            // margin: const EdgeInsets.fromLTRB(left, top, right, bottom),
            decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(80)),
            child: Expanded(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {  },
                    child: Container(
                      // padding: const EdgeInsets.all(10),
                      height:100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black),
                      child: const Center(
                        child: Text("For You",style: TextStyle(fontSize: 20,color: Colors.white),)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {  },
                    child: Container(
                      // padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black),
                      child: const Center(
                        child: Text("Trending",style: TextStyle(fontSize: 20,color: Colors.white),)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {  },
                    child: Container(
                      // padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black),
                      child: const Center(
                        child: Text("Following",style: TextStyle(fontSize: 20,color: Colors.white),)),
                    ),
                  )
                ],
              ),
            )

          ),
          Expanded(
            child: ListView.builder(
              itemCount: homeController.postList.length ,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                  
                        color: Colors.white,
                        child: TextButton(
            
                          onPressed: () {                            
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const PostDetailPage()),
                            );
                           },
                          child:  Column(
                            children: [
                               Row(
                                children: [
                                  Image.asset("assets/images/iconsUser.png"),
                                  const SizedBox(width: 20,),
                                  Text("USER",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,color: Colors.black),),),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(homeController.postList[index].title!,textAlign: TextAlign.center,style:GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,color: Colors.black),),),
                                  Text(homeController.postList[index].body!,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10,color: Colors.grey[600]),),),

                                ],
                              )
                            ],
                          ),
                        ),
                      );
                },
              
            ),
          ),
        ],
      ),
      
    ),
    
    
    );
  }
}
