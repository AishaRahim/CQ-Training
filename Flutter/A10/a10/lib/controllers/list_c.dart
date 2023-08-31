import 'package:get/get.dart';

import '../model/book_model.dart';
import '../services/book_api.dart';

class BookListController extends GetxController{
  RxList <Book> bookList = <Book>[].obs;
  RxBool isLoading = true.obs;

 Future<void> apiCall() async {
  isLoading(true);
  var x = await ApiBook().apiService();
  bookList(x);
  isLoading(false);
 }

}

