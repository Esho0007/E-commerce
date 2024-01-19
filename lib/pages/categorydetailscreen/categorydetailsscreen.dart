import 'package:bootcamp_practice/pages/widget/custom_bott_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/routes/names.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: ListView(
        children: [
          //row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200, shape: BoxShape.circle),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200,
                  ),
                  child: Image.asset(
                    "assets/images/niky.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.cartscreen);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200, shape: BoxShape.circle),
                    child: Image.asset("assets/images/Bag.png"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "365 Items",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text("Available in stock",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.grey.shade600))
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200),
                  child: const Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed('/DetailScreen');
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Image.asset(
                              "assets/images/per3.png",
                              height: 200,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            top: 22,
                            right: 22,
                            child: Image.asset("assets/images/Heart.png"),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            bottom: -350,
                            child: Image.asset("assets/images/Log.png"),
                          ),
                        ],
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Sport Wear Club \nFlees",
                          style: TextStyle(
                            color: Color(0xff1D1E20),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("£99",
                            style: TextStyle(
                                color: Color(0xff1D1E20),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset(
                            "assets/images/per1.png",
                            height: 200,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: 22,
                          right: 22,
                          child: Image.asset("assets/images/Heart.png"),
                        ),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Trail Running Jacket Nike \nWind runner",
                          style: TextStyle(
                            color: Color(0xff1D1E20),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("£79",
                            style: TextStyle(
                                color: Color(0xff1D1E20),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset(
                            "assets/images/per5.png",
                            height: 200,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: 22,
                          right: 22,
                          child: Image.asset("assets/images/Heart.png"),
                        ),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Sport Wear Club \nFlees",
                          style: TextStyle(
                            color: Color(0xff1D1E20),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("£99",
                            style: TextStyle(
                                color: Color(0xff1D1E20),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset(
                            "assets/images/per6.png",
                            height: 200,
                            width: 150,
                          ),
                        ),
                        Positioned(
                          top: 22,
                          right: 22,
                          child: Image.asset("assets/images/Heart.png"),
                        ),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Sport Wear Club \nFlees",
                          style: TextStyle(
                            color: Color(0xff1D1E20),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("£69",
                            style: TextStyle(
                                color: Color(0xff1D1E20),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   width: double.infinity,
          //   child: GridView.builder(
          //     physics: const NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 2,
          //         mainAxisSpacing: 2,
          //       childAspectRatio: 0.9
          //     ),
          //     itemBuilder: (BuildContext context, int index) {
          //       return const Column(
          //         children: [
          //           ClistView(),
          //         ],
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: const MyButtomNarBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite"),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      //   ],
      // ),
    );
  }
}
