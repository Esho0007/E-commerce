import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cartscreen/controller.dart';

class CartCard extends StatelessWidget {
  final Color color;
  final String imgPart;
  final Function()? onTapDecrement;
  final Function()? onTapIncrement;
  final String quantity;

  const CartCard({
    super.key,
    required this.color,
    required this.imgPart,
    this.onTapDecrement, this.onTapIncrement, required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    final CartScreenController counterController = Get.put(CartScreenController());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        padding: const EdgeInsets.all(4),
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imgPart),
            ),
            const SizedBox(width: 9,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Men's Tie-Dye T Shirt",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Niek Sportswear",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "£99 (+£4.00 Tax)",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.grey.shade600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    // Use Obx to listen to changes in the counter
                    InkWell(
                      onTap:
                       onTapDecrement,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  Text(quantity,style: const TextStyle(fontWeight: FontWeight.bold),),
                    const SizedBox(
                      width: 6,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    InkWell(
                      onTap:
                        onTapIncrement,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(0.5))),
                        child: Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.5))),
                      child: Icon(
                        Icons.delete,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
