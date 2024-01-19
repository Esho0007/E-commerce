import 'package:get/get.dart';

import 'index.dart';

class AddReviewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddReviewController>(() => AddReviewController());
  }
}
