import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../common/routes/names.dart';
import '../widget/custom_textfield.dart';
import '../widget/top_bar.dart';

class AddCardScreen extends StatefulWidget {
  AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  bool isSwitched = false;
  final _expController = TextEditingController();

  final _cvvController = TextEditingController();

  final _phoneNumberController = TextEditingController();

  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: ListView(
        children:  [
          const TopBar(
            barName: "Add NewCard",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffffeee2)
                  ),
                  child: Image.asset("assets/images/img3.png"),
                ),
                const SizedBox(width: 15,),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xfff5f6fa)
                  ),
                    child: Image.asset("assets/images/img2.png")
                ),
                const SizedBox(width: 15,),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xfff5f6fa)
                  ),
                    child: Image.asset("assets/images/img1.png")
                ),
              ],
            ),
          ),
           const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Card Owner",style: TextStyle(color: Colors.black,fontSize: 20),),
                const SizedBox(height: 5,),
                CustomTextField(controller: _phoneNumberController, hintText: "Mr Adelani")
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Card Number",style: TextStyle(color: Colors.black,fontSize: 20),),
                const SizedBox(height: 5,),
                CustomTextField(controller: _addressController, hintText: "+234 7032087663")
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "EXP",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 160,
                      child: CustomTextField(
                          controller: _expController, hintText: "24/24"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CVV",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 160,
                      child: CustomTextField(
                          controller: _cvvController, hintText: "7736"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.confirmscreen);
        },
        child:  Container(
          height: 80,
          color: const Color(0xff9775fa),
          child: const Center(
            child: Text(
              "Add card",
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
