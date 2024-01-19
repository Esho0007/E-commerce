import 'package:bootcamp_practice/pages/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/routes/names.dart';
import '../widget/custom_textfield.dart';
import '../widget/top_bar.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isSwitched = false;
  final _ownerController = TextEditingController();

  final _cardnumbController = TextEditingController();

  final _expController = TextEditingController();

  final _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: ListView(
        children: [
          const TopBar(
            barName: "Payment",
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/Group.png",
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 68.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Adelani Saheed",style: TextStyle(color: Colors.white,fontSize: 18),),
                        Image.asset(
                          "assets/images/Frame.png",
                          fit: BoxFit.cover,color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 68.0),
                    child: Text("Visa Classic",style: TextStyle(color: Colors.white),),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 68.0),
                    child: Text("2 3 4 5   2 3 4 5   2 3 4 5   2 3 4 5",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 68.0),
                    child: Text("£3,897.00",style: TextStyle(color: Colors.white,fontSize: 18),),
                  )
                ],
              )
            ],
          ),
          // CustomButton(color: Color(0xfff5f2ff), name: "Add new card", ontap: (){}),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xfff5f2ff),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 1, color: const Color(0xff9775fa))),
              child: const Center(
                  child: Text(
                "Add new card",
                style: TextStyle(fontSize: 18),
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Card Owner",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                    controller: _ownerController, hintText: "Mr Adelani")
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Card Number",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                    controller: _cardnumbController,
                    hintText: "2364 7648 3564 0987")
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Save card info",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Switch(
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    value: isSwitched,
                    onChanged: (newBool) {
                      setState(() {
                        isSwitched = newBool!;
                      });
                    })
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.addcardscreen);
        },
        child: Container(
          height: 80,
          color: const Color(0xff9775fa),
          child: const Center(
            child: Text(
              "Add Card",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
