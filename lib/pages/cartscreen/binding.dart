import 'package:get/get.dart';

import 'index.dart';

class CartScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartScreenController>(() => CartScreenController());
  }
}
