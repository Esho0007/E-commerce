import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/homescreen/home_screen.dart';
import 'controller.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen ({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoardScreen> {
  final controller = Get.find<DashBoardController>();

  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarIconBrightness: Brightness.dark,
    //   ),
    // );
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.state.pageIndex.value,
            children: [
              HomeScreen(),
              Text("FavouritePage"),
              Text("Cart"),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          child: Obx(
            () => BottomNavigationBar(
              backgroundColor: Colors.transparent,
              useLegacyColorScheme: false,
              // iconSize: 30,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              onTap: (int index) => controller.selectedPageIndex(index),
              currentIndex: controller.state.pageIndex.value,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home_filled,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Favourite',
                  icon: Icon(
                    Icons.favorite,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Cart',
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


