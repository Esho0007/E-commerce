import 'package:flutter/material.dart';

class ButtomBar extends StatelessWidget {
  final String name;
  const ButtomBar({
    super.key, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: const Color(0xff9775fa),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
    );
  }
}