import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../common/routes/names.dart';
import '../widget/review_card.dart';
import '../widget/top_bar.dart';

class ReviewScreen extends StatelessWidget {
  final _controller = TextEditingController();

  ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: ListView(
        children: [
          const TopBar(
            barName: 'Reviews',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "245 Review",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        Text(
                          "4.8",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.orange,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.orange,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.orange,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.orange,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.grey,
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.addreview);
                    },
                    child: Image.asset("assets/images/Add Review.png"))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const ReviewCard(),
          const SizedBox(
            height: 5,
          ),
          const ReviewCard(),
          const SizedBox(
            height: 5,
          ),
          const ReviewCard(),
          const SizedBox(
            height: 5,
          ),
          const ReviewCard(),
        ],
      ),
    );
  }
}
