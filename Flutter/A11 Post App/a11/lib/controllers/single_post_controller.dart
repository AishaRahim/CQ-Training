import 'package:get/get.dart';

import '../models/get_single.dart';
import '../services/apis.dart';

class SinglePostController extends GetxController{
  Rx <GetSingle> singlePost = GetSingle().obs;
  RxBool isLoading = true.obs;

  Future<void> controllerGetSingle(int id) async {
    isLoading(true);
    var x = await ApiCall().apiGetSingle(id);
    singlePost(x);
    isLoading(false);
  }
}


