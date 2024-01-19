import 'package:bootcamp_practice/model/product%20model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/routes/names.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            width: 300,
            child: Stack(
              children: [
                ClipRRect(
                  //borderRadius: BorderRadius.circular(32),
                  child: Image.network(
                    product.images[0],
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 22,
                  left: 22,
                  child: InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Image.asset("assets/images/Back.png")),
                ),
                Positioned(
                  top: 22,
                  right: 22,
                  child: InkWell(
                      onTap: (){
                        Get.toNamed(AppRoutes.cartscreen);
                      },
                      child: Image.asset("assets/images/Cart.png")),
                ),
              ],
            ),
          ),
           Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Men's Printed Pullover Hoodie",
                      style: TextStyle(color: Color(0xff8F959E)),
                    ),
                    Text(
                      "Price",
                      style: TextStyle(
                        color: Color(0xff8F959E),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.title.toString(),
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                          color: Color(0xff1D1E20),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.price.toString(),
                      style: const TextStyle(
                          color: Color(0xff1D1E20),
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Spacer(),
              Image.network (product.images[0],height: 80,width: 80),
              const Spacer(),
              Image.network( product.images[1],height: 80,width: 80),
              const Spacer(),
              Image.network( product.images[2],height: 80,width: 80),
              const Spacer(),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Size",
                      style: TextStyle(
                          color: Color(0xff1D1E20),
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Size Guide",
                      style: TextStyle(
                        color: Color(0xff8F959E),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffF5F6F8),
                      ),
                      child: const Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                              color: Color(0xff1D1E20),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffF5F6F8),
                      ),
                      child: const Center(
                        child: Text(
                          "M",
                          style: TextStyle(
                              color: Color(0xff1D1E20),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffF5F6F8),
                      ),
                      child: const Center(
                        child: Text(
                          "L",
                          style: TextStyle(
                              color: Color(0xff1D1E20),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffF5F6F8),
                      ),
                      child: const Center(
                        child: Text(
                          "XL",
                          style: TextStyle(
                              color: Color(0xff1D1E20),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffF5F6F8)),
                      child: const Center(
                        child: Text(
                          "2XL",
                          style: TextStyle(
                              color: Color(0xff1D1E20),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Description",
                  style: TextStyle(
                      color: Color(0xff1D1E20),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  product.description.toString(),
                  style: const TextStyle(
                    color: Color(0xff8F959E),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reviews",
                  style: TextStyle(
                      color: Color(0xff1D1E20),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xff8F959E),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
