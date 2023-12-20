import 'package:flutter/material.dart';

import '../widget/custom_textfield.dart';
class AddReviewScreen extends StatelessWidget {
  final _controller = TextEditingController();

  AddReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/Bac.png"),
                const SizedBox(
                  width: 65,
                ),
                const Text(
                  "Add Reviews",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Name",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    controller: _controller, hintText: "Type Your Name"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: Text(
              "How was you experience",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Describe your experience?",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: Text(
              "Star",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.normal),
            ),
          ),
          // Slider(
          //   value: rating,
          //   onChanged: (newRating) {
          //   setState(() => rating = newRating));
          // },
          //   divisions: 4,
          //   label: "rating",
          // ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: const Color(0xff9775fa),
        child: const Center(
          child: Text(
            "Submit Review",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
