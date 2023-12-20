import 'package:get/get.dart';

import 'index.dart';

class CartScreenController extends GetxController {
  CartScreenController();

  var state = CartScreenState();
  // Define an observable variable for the counter


  // Define methods for increment and decrement
  void increment() {
   state.quantity++;
  }

  void decrement() {
    if (state.quantity > 1) {
      state.quantity--;
    }
  }
}

