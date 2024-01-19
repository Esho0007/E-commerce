import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../common/routes/names.dart';
import '../widget/custom_textfield.dart';
import '../widget/top_bar.dart';

class AddresScreen extends StatefulWidget {
   AddresScreen({super.key});

  @override
  State<AddresScreen> createState() => _AddresScreenState();
}

class _AddresScreenState extends State<AddresScreen> {
  bool isSwitched = false;
  final _nameController = TextEditingController();

  final _countryController = TextEditingController();

  final _cityController = TextEditingController();

  final _phoneNumberController = TextEditingController();

  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: ListView(
        children:  [
           const TopBar(
            barName: "Address",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Name",style: TextStyle(color: Colors.black,fontSize: 20),),
                const SizedBox(height: 5,),
                CustomTextField(controller: _nameController, hintText: "Hemendra Mali")
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
                    const Text("Country",style: TextStyle(color: Colors.black,fontSize: 20),),
                    const SizedBox(height: 5,),
                    SizedBox(
                      width: 160,
                        child: CustomTextField(controller: _countryController, hintText: "Nigeria"),),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("City",style: TextStyle(color: Colors.black,fontSize: 20),),
                    const SizedBox(height: 5,),
                    SizedBox(
                        width: 160,
                        child: CustomTextField(controller: _cityController, hintText: "Abuja"),),
                  ],
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
                const Text("Phone Number",style: TextStyle(color: Colors.black,fontSize: 20),),
                const SizedBox(height: 5,),
                CustomTextField(controller: _phoneNumberController, hintText: "+234 7032087663")
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Address",style: TextStyle(color: Colors.black,fontSize: 20),),
                const SizedBox(height: 5,),
                CustomTextField(controller: _addressController, hintText: "2, Ushe zone 2, Abuja")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Save as primary address",style: TextStyle(color: Colors.black,fontSize: 16),),
                Switch(
                  activeColor: Colors.green,
                    inactiveThumbColor: Colors.redAccent,
                    value: isSwitched, onChanged: (newBool){
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
          Get.toNamed(AppRoutes.paymentscreen);
        },
        child:  Container(
          height: 80,
          color: const Color(0xff9775fa),
          child: const Center(
            child: Text(
              "Save Address",
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
