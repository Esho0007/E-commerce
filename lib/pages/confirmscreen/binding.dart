import 'package:get/get.dart';

import 'index.dart';

class ConfirmScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmScreenController>(() =>ConfirmScreenController());
  }
}
