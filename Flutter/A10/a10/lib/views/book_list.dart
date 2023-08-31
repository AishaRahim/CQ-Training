import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/list_c.dart';
import 'book_detail.dart';

class BookListPage extends StatefulWidget {
  const BookListPage({super.key});

  @override
  State<BookListPage> createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  final BookListController bc = Get.put(BookListController());

@override
  void initState() {
    super.initState();
    bc.apiCall();

  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => bc.isLoading.isTrue
        ? const Center(child: CircularProgressIndicator()) 
        : Scaffold(
      appBar: AppBar(
        title: Text('Book List',style: TextStyle(fontSize: 30,color: Colors.blue[900]),),
        backgroundColor: Colors.blue[100],
      ),
        body: Container(
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            child: ListView.builder(
                    itemCount: bc.bookList.length,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                        color: Colors.cyanAccent,
                        child: TextButton(
                          onPressed: () {                            
                            Get.to( BookDetail(id: bc.bookList[index].id!,));
                           },
                          child: ListTile(
                            title: Text(bc.bookList[index].name!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                          ),
                        ),
                      );
                    }
               )
        )
        )
    );
  }
}