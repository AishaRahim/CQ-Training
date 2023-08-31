import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/detail_controller.dart';

class BookDetail extends StatefulWidget {
  final int id;

  const BookDetail({super.key, required this.id});

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  final BookDetailController detailController = Get.put(BookDetailController());
  @override
  void initState() {
    super.initState();
    detailController.apiDetailCall(widget.id);
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() => detailController.isLoading.isTrue
        ? const Center(child: CircularProgressIndicator()) 
        : Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.tealAccent ,
            width: 500,
            height: 300,
            child: Column(
              children: [
                ClipRRect(
                  child: Image.asset('assets/images/book.png',fit: BoxFit.cover,
                  height: 300,
                  ),
                ),
                // Text('',style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
                // const SizedBox(height: 10,),
                // Text("",style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
                // const SizedBox(height: 10,),
                // Text("",style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
                // const SizedBox(height: 30,),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(detailController.book.value.name!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
              Text(detailController.book.value.id!.toString(),style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
              Text(detailController.book.value.author!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
              Text(detailController.book.value.type!,style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
              Text(detailController.book.value.available!.toString(),style: GoogleFonts.abel(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),),
            ],
          ),
        ],
      ),
    ));
  }
  }
