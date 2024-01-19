import 'package:get/get.dart';

import 'index.dart';

class AddresBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddresController>(() => AddresController());
  }
}
