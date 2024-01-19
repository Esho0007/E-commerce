import 'dart:async';
import 'package:bootcamp_practice/common/routes/names.dart';
import 'package:get/get.dart';

import 'index.dart';

class SplashController extends GetxController {
  SplashController();

  // var state = SplashState();

  // @override
  // void onReady() {
  //   super.onReady();

  //   // Timer(Duration(seconds: 3), () {
  //   //   Get.to(() => Onboarding1());
  //   // });
  //   Future.delayed(Duration(seconds: 3), () {
  //     Get.off(Onboarding1());
  //   });
  //   print("Controller Here");
  // }

  @override
  void onInit() {
    super.onInit();

    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offNamed(AppRoutes.onboarding),
    );
  }
}
