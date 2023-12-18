// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Icon(Icons.arrow_back),
//                 Text(
//                   "Sign-Up",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
//             child: Container(
//               height: 50,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   border: Border.all(width: 1, color: Colors.grey),
//                   borderRadius: BorderRadius.circular(12)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Icon(Icons.search),
//                   ),
//                   Container(
//                     height: 50,
//                     width: 100,
//                     decoration: BoxDecoration(
//                       color: Colors.brown,
//                       border: Border.all(width: 1, color: Colors.grey),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         "Search",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
//             child: Text("Welcome \n Saheed ",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
//             child: Container(
//               height: 50,
//               width: double.infinity,
//               child: const TextField(),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
//             child: Container(
//               height: 50,
//               width: double.infinity,
//               child: const TextField(),
//             ),
//           ),
//           const SizedBox(
//             height: 55,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
//             child: Container(
//               height: 50,
//               width: 30,
//               decoration: BoxDecoration(
//                   border: Border.all(width: 1, color: Colors.grey.shade900),
//                   borderRadius: BorderRadius.circular(12),
//                   color: Colors.brown.shade500),
//               child: const Center(
//                 child: Text(
//                   "Sign-In",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           const Center(
//             child: Text(
//               "Naija League",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
//             ),
//           ),
//           const SizedBox(
//             height: 45,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                 ),
//                 child: Image.asset("assets/images/twitter.png"),
//               ),
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                 ),
//                 child: Image.asset("assets/images/facebook.png"),
//               ),
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                 ),
//                 child: Image.asset("assets/images/google.png"),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/Onboarding1');
        },
        child: Container(
          height: 1000,
          width: double.infinity,
          color:  const Color(0xFF100D40),
          child: Image.asset("assets/images/ass1.png",),
        ),
      ),
    );
  }
}
