import 'package:get/get.dart';

import '../models/get_comments.dart';
import '../services/apis.dart';

class CommentsController extends GetxController{
  RxList <GetComments> commentList = <GetComments>[].obs;
  RxBool isLoading = true.obs;

  Future<void> controllerGetComments(int postId) async {
    isLoading(true);
    var x = await ApiCall().apiGetComments(postId);
    commentList(x);
    isLoading(false);
  }
}
