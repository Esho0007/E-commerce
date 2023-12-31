import 'package:bootcamp_pratice/common/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 66,
          ),
          Center(
            child: Stack(
              children: [
                Image.asset("assets/images/ass2.png"),
                Image.asset("assets/images/owo.png")
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
                  "Easy To Use",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  " Very easy to use and easy to understand for those of you who are beginners.",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: InkWell(
              onTap: () {
                Get.offAllNamed(AppRoutes.signup);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => SignUpScreen(),
                //     ));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff100D40),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Login Now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff100D40),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
