import 'package:get/get.dart';

import '../model/bookbyid_model.dart';
import '../services/book_api.dart';

class BookDetailController extends GetxController{
  Rx<BookbyId> book = BookbyId().obs;
  RxBool isLoading = true.obs;

 Future<void> apiDetailCall(id) async {
  isLoading(true);
  var x = await ApiBookDetail().apiDetail(id);
  book(x);
  isLoading(false);
 }

}

