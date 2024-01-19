import 'package:bootcamp_practice/common/routes/names.dart';
import 'package:bootcamp_practice/dashboard/dashboard.dart';
import 'package:bootcamp_practice/pages/homescreen/index.dart';
import 'package:bootcamp_practice/pages/onboarding/index.dart';
import 'package:get/get.dart';
import '../../dashboard/binding.dart';
import '../../pages/addcardscreen/add_card_screen.dart';
import '../../pages/addcardscreen/binding.dart';
import '../../pages/addresscreen/addres_screen.dart';
import '../../pages/addresscreen/binding.dart';
import '../../pages/addreviewscreen/add_review_screen.dart';
import '../../pages/addreviewscreen/binding.dart';
import '../../pages/auth/signup/index.dart';
import '../../pages/cartscreen/binding.dart';
import '../../pages/cartscreen/cart_screen.dart';
import '../../pages/categorydetailscreen/binding.dart';
import '../../pages/categorydetailscreen/categorydetailsscreen.dart';
import '../../pages/confirmscreen/binding.dart';
import '../../pages/confirmscreen/confirm_screen.dart';
import '../../pages/paymentscreen/binding.dart';
import '../../pages/paymentscreen/payment_screen.dart';
import '../../pages/reviewscreen/binding.dart';
import '../../pages/reviewscreen/review_screen.dart';
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
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.signup,
      page: () => SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: AppRoutes.categorydetails,
      page: () => const CategoryDetailsScreen(),
      binding: CategoryDetailsBinding(),
    ),
    GetPage(
      name: AppRoutes.review,
      page: () => ReviewScreen(),
      binding: ReviewBinding(),
    ),
    GetPage(
      name: AppRoutes.addreview,
      page: () => AddReviewScreen(),
      binding: AddReviewBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashBoardScreen(),
      binding: DashBoardBinding(),
    ),
    GetPage(
      name: AppRoutes.cartscreen,
      page: () => const CartScreen(),
      binding: CartScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.addressscreen,
      page: () => AddresScreen(),
      binding: AddresBinding(),
    ),
    GetPage(
      name: AppRoutes.paymentscreen,
      page: () => const PaymentScreen(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: AppRoutes.addcardscreen,
      page: () => AddCardScreen(),
      binding: AddCardBinding(),
    ),
    GetPage(
      name: AppRoutes.confirmscreen,
      page: () => const ConfirmScreen(),
      binding: ConfirmScreenBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.details,
    //   page: () =>  DetailScreen(product: ),
    //   binding: DetailsBinding(),
    // ),
  ];
}
