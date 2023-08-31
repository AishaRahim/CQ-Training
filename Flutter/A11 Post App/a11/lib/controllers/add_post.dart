import 'package:get/get.dart';

import '../models/add_post.dart';
import '../services/apis.dart';

class CommentsController extends GetxController{
  RxList <AddPost> postList = <AddPost>[].obs;
  RxBool isLoading = true.obs;

  Future<void> controllerAddPost() async {
    isLoading(true);
    var x = await AddPostApi().apiAddPost();
    postList(x);
    isLoading(false);
  }
}
