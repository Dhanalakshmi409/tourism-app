// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tourismapp/homepage.dart';

// class LocationCard extends StatefulWidget {
//   const LocationCard({super.key});

//   @override
//   State<LocationCard> createState() => _LocationCardState();
// }

// class _LocationCardState extends State<LocationCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(leading: IconButton(onPressed: () {
//         Get.to(HomePage());
//       },
//        icon:const Icon(Icons.arrow_back_ios_new)),
//        title:const Text("Search Your Location"),
//        ),
//        body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Row(
//           children: [
//             Image.asset('assets/images/maptour.png',
//             width: 100,
//             ),
//           const  SizedBox(width: 10),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 50),
//                   child: Text("Your Location",
//                   style: Theme.of(context).textTheme.headline6!.copyWith(
//                     color: Theme.of(context).primaryColor,
//                   ),
//                   ),
//                 ),
//               const  SizedBox(height: 5),
//                 Text("India, New Delhi",
//                 style: Theme.of(context).textTheme.labelLarge,
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }