import 'package:bootcamp_practice/pages/onboarding/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_button.dart';

class Onboarding1 extends GetView<OnboardingController> {
  const Onboarding1({super.key});

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
                Image.asset("assets/images/Send money.png")
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
                  "Send Money",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Send money easily and with a single click, everything will be sent everytime you make a transaction.",
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
              Get.off(() => Onboarding2());
              //Navigator.pushNamed(context, '/Onboarding2');
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
