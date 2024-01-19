import 'package:get/get.dart';

import 'index.dart';

class CategoryDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryDetailsController>(() => CategoryDetailsController());
  }
}
