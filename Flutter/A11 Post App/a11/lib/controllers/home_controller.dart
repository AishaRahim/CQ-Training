import 'package:get/get.dart';

import '../models/get_all.dart';
import '../services/apis.dart';

class HomeController extends GetxController{
  RxList <GetAll> postList = <GetAll>[].obs;
  RxBool isLoading = true.obs;

  Future<void> controllerGetAll() async {
    isLoading(true);
    var x = await ApiCall().apiGetall();
    postList(x);
    isLoading(false);
  }
}
