import 'package:get/get.dart';

import '../models/update_post.dart';
import '../services/apis.dart';

class UpdatePostController extends GetxController{
  Rx updatePost = UpdatePost().obs;
  RxBool isLoading = true.obs;

  Future<void> controllerUpdatePost(int postId,String title,String body) async {
    isLoading(true);
    var x = await ApiCall().apiUpdatePost(postId,title,body);
    updatePost(x);
    isLoading(false);
  }
  
}
