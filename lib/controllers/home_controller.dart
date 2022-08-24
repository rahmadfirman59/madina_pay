import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
    currentIndex.value = 0;
  }
}
