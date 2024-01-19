import 'package:bootcamp_practice/dashboard/state.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  DashBoardController();

  var state = DashBoardState();

  void selectedPageIndex(int index) {
    state.pageIndex.value = index;
  }
}
