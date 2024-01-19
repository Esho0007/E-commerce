import 'package:get/get.dart';

import '../addresscreen/controller.dart';
import 'index.dart';

class PaymentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
