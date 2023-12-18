import 'package:flutter/material.dart';

class ClistView extends StatelessWidget {
  const ClistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          padding: const EdgeInsets.all(4),
          color: Colors.white,
          child: Stack(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/DetailScreen');
                },
                  child: Image.asset("assets/images/per1.png",fit: BoxFit.cover,)),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      ),
                  child: Image.asset("assets/images/Heart.png")
                ),
              ),
            ],
          ),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nike Sport Wear Club"),
            Text("Fleece"),
            SizedBox(height: 5,),
            Text("£90",style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        )
      ],
    );
  }
}




// import 'package:flutter/material.dart';
//
// class ListTileWidget extends StatelessWidget {
//   final String image;
//   final String title;
//   final String subtitle;
//   void Function()? onPressed;
//
//   ListTileWidget({
//     Key? key,
//     required this.onPressed,
//     required this.title,
//     required this.subtitle,
//     required this.image,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: 500,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: const [
//               BoxShadow(
//                 color: Colors.lightBlue,
//                 blurRadius: 10,
//                 spreadRadius: 1,
//                 offset: Offset(3, 3),
//               ),
//               BoxShadow(
//                 color: Colors.white,
//                 blurRadius: 10,
//                 spreadRadius: 1,
//                 offset: Offset(-3, -3),
//               ),
//             ],
//           ),
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Image.asset(image),
//               Column(
//                 children: [
//                   Text(title),
//                   Text(subtitle),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
