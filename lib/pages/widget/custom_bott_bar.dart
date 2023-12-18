import 'package:flutter/material.dart';

class MyButtomNarBar extends StatelessWidget {
  const MyButtomNarBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(5),
          boxShadow:  [
            const BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 1,
                color: Colors.grey),
            BoxShadow(
                offset: const Offset(4, 4),
                blurRadius: 10,
                spreadRadius: 1,
                color: Colors.grey.shade300),
          ],),
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (){},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade300,
              ),
              child: Image.asset("assets/images/Home.png",color: Colors.black,fit: BoxFit.cover),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade300,
              ),
              child: Image.asset("assets/images/Heart.png",color: Colors.black),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade300,
              ),
              child: Image.asset("assets/images/Bag.png",color: Colors.black,),
            ),
          ),
          InkWell(

            onTap: (){
              Navigator.pushNamed(context, '/DetailScreen');
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade300,
              ),
              child: Image.asset("assets/images/Wallet.png",color: Colors.black,fit: BoxFit.cover,),
            ),
          ),
        ],
      ),
    );
  }
}
