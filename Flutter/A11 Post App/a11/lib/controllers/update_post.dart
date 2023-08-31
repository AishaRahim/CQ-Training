import 'package:get/get.dart';

import '../models/update_post.dart';
import '../services/apis.dart';

class CommentsController extends GetxController{
  RxList <UpdatePost> postList = <UpdatePost>[].obs;
  RxBool isLoading = true.obs;

  Future<void> controllerUpdatePost(int postId) async {
    isLoading(true);
    var x = await UpdatePostApi().apiUpdatePost(postId);
    postList(x);
    isLoading(false);
  }
}
