import 'package:get/get.dart';

import '../models/get_single.dart';
import '../services/apis.dart';

class SinglePostController extends GetxController{
  Rx <GetSingle> postList = GetSingle().obs;
  RxBool isLoading = true.obs;

  Future<void> controllerGetSingle(id) async {
    isLoading(true);
    var x = await ApiCall().apiGetSingle(id);
    postList(x);
    isLoading(false);
  }
}


