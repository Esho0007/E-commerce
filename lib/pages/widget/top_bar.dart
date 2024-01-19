import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBar extends StatefulWidget {
  final String barName;
  const TopBar({
    super.key, required this.barName,
  });

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
      child: Row(

        children: [
          InkWell(
            onTap: (){
              setState(() {
                Get.back();
              });
            },
            child: Image.asset("assets/images/Bac.png"),),
          const Spacer(),
           Text(
            widget.barName,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
