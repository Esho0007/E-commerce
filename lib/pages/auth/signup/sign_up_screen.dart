import 'package:bootcamp_pratice/common/routes/names.dart';
import 'package:bootcamp_pratice/pages/widget/custom_button.dart';
import 'package:bootcamp_pratice/pages/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final _name = TextEditingController();
  final _emailController = TextEditingController();
  final _password = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Center(
              child: Text(
                "Welcome !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Color(0xff100D40),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "Full Name",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  controller: _name,
                  hintText: "   Type Your Name",
                  prefixIcon: const Icon(Icons.person),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Email Address",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  controller: _emailController,
                  hintText: "   Type Your Email",
                  prefixIcon: const Icon(Icons.email_outlined),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  controller: _password,
                  hintText: "   Type Your Password",
                  prefixIcon: const Icon(Icons.key),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text("I have agree to our Terms and Conditions")
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          CustomButton(
              textColor: Colors.white,
              color: const Color(0xff100D40),
              name: "Sign Up",
              ontap: () {
                Get.offAllNamed(AppRoutes.home);
                //  Navigator.pushNamed(context, '/HomeScreen');
              }),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            color: Colors.white,
            name: "With Your Phone Number",
            textColor: Colors.black,
            border: 2,
            ontap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ?"),
                Text(
                  " Sign In",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
