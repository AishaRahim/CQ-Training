import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.blue[300],
              child: Text(detailController.book.value.name!,style: TextStyle(fontSize: 30,color: Colors.blue[900]),),
            ),
          ],
        ),
      ),

    ));
  }
}