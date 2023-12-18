import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 350,
            width: 300,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    "assets/images/IMG.png",
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 22,
                  left: 22,
                  child: Image.asset("assets/images/Back.png"),
                ),
                Positioned(
                  top: 22,
                  right: 22,
                  child: Image.asset("assets/images/Cart.png"),
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
            children: [
              Padding(
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
                padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nike Club Flee",
                      style: TextStyle(
                          color: Color(0xff1D1E20),
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "£99",
                      style: TextStyle(
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
              Image.asset("assets/images/Rec1.png"),
              const Spacer(),
              Image.asset("assets/images/Rec2.png"),
              const Spacer(),
              Image.asset("assets/images/Rec3.png"),
              const Spacer(),
              Image.asset("assets/images/Rec4.png"),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                      color: Color(0xff1D1E20),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with",
                  style: TextStyle(
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
