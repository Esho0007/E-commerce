import 'package:get/get.dart';

import 'index.dart';

class ReviewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReviewController>(() => ReviewController());
  }
}
