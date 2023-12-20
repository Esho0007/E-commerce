import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/routes/names.dart';

class PageCard extends StatelessWidget {
 // final String? description;
  final String name;
  final Function() onTap;
  final String imgPart;
  final String price;
  final bool? isFavourite;

  const PageCard(
      {super.key,
     // this.description,
      required this.imgPart,
      required this.price,
      this.isFavourite,
      required this.onTap,
        required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SizedBox(
              height: 200,
              width: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.network(
                  imgPart,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 22,
              right: 22,
              child: Image.asset("assets/images/Heart.png"),
            ),
            Positioned(
              bottom:  3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color(0xff1D1E20),
                          fontSize: 12
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                          color: Color(0xff1D1E20), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
