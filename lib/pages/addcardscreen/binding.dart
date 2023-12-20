import 'package:get/get.dart';
import 'index.dart';

class AddCardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCardController>(() => AddCardController());
  }
}
