import 'package:bootcamp_pratice/common/routes/names.dart';
import 'package:bootcamp_pratice/pages/homescreen/index.dart';
import 'package:bootcamp_pratice/pages/onboarding/index.dart';

import 'package:get/get.dart';

import '../../pages/auth/signup/index.dart';
import '../../pages/splash/index.dart';

class AppPages {
  static const initial = AppRoutes.initial;
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const Onboarding1(),
      binding: OnboardingBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.login,
    //   page: () => const LoginScreen(),
    //   binding: LoginBinding(),
    // ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => SignUpScreen(),
      binding: SignUpBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.details,
    //   page: () => const DetailsScreen(),
    //   binding: DetailsBinding(),
    // ),
  ];
}
