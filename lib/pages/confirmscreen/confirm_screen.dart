import 'package:bootcamp_practice/pages/widget/custom_button.dart';
import 'package:bootcamp_practice/pages/widget/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common/routes/names.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const TopBar(barName: ""),
          SizedBox(
            height: 560,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/Mask1.png"),
                Positioned(
                  top: 53,
                  child: Image.asset("assets/images/phone.png"),
                ),
                const Positioned(
                  top: 333,
                  child: Text(
                    "Order Confirmed!",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                const Positioned(
                  top: 373,
                  child: Text(
                    "Your order has been confirmed, we will send \n you confirmation email shortly.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          CustomButton(color: const Color(0xfff5f5f5), name: "Go to Orders", ontap: (){}),
          const SizedBox(height: 60,),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.addressscreen);
        },
        child:  Container(
          height: 60,
          color: const Color(0xff9775fa),
          child: const Center(
            child: Text(
              "Continue Shopping",
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
