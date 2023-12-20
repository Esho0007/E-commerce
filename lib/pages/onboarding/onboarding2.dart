import 'package:bootcamp_practice/pages/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_button.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: ListView(
        children: [
          const SizedBox(
            height: 66,
          ),
          Center(
            child: Stack(
              children: [
                Image.asset("assets/images/ass2.png"),
                Image.asset("assets/images/group1.png")
              ],
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          const Padding(
            padding: EdgeInsets.all(38.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Request Money",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "You can request money from friends and family to send as much money as you want",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
                color: Color(0xff100D40), shape: BoxShape.circle),
          ),
          const SizedBox(
            height: 36,
          ),
          CustomButton(
            textColor: Colors.white,
            color: const Color(0xff100D40),
            name: 'Next Step',
            ontap: () {
              Get.off(() => const Onboarding3());
              //Navigator.pushNamed(context, '/Onboarding3');
            },
          ),
          const SizedBox(
            height: 36,
          ),
          const Center(
            child: Text(
              "Skip This Step",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
