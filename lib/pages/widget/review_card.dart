import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            //border: Border.all(width: 1,color: Colors.grey.withOpacity(0.5),
           // ),
           // boxShadow: [
           //    BoxShadow(
           //        offset: const Offset(0,3),
           //        spreadRadius: 1,
           //        blurRadius: 10,
           //        color: Colors.grey.withOpacity(0.5)
           //    ),
           //    BoxShadow(
           //        offset: const Offset(0,-3),
           //        spreadRadius: 1,
           //        blurRadius: 10,
           //        color: Colors.white.withOpacity(0.5)
           //    ),
           //  ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffCBD2DF),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Jenny Wilson",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(Icons.lock_clock,color: Colors.grey.withOpacity(0.8),),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "13 Sep, 2020",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "4.8",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "rating",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
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
                ],
              ),
              const SizedBox(height: 15,),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Color(0xff8F959E)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}