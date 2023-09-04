import 'package:get/get.dart';

import '../models/add_post.dart';
import '../services/apis.dart';

class AddPostController extends GetxController{
  Rx <AddPost> post = AddPost().obs;
  RxBool isLoading = true.obs;

  Future<void> controllerAddPost(String userID,String title,String body) async {
    isLoading(true);
    var x = await ApiCall().apiAddPost(userID,title,body);
    post(x);
    isLoading(false);
  }
}
