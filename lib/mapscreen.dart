import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/newmap.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 153, 25, 228),
        title:const Text("Google Maps"),
         ),
      body:Container(
        decoration:const BoxDecoration(
        image: DecorationImage(
         image: AssetImage("assets/images/map1.jpeg"),
        fit: BoxFit.cover,
        opacity: 3,
        ),
      ),
      child:
       Center(
         child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: 
          Column(
            children: [
              // ignore: prefer_const_constructors
              ElevatedButton(onPressed: () {
                Get.to(const MyLocation());
              }, child:const Text("Google Map"))
            ],
          ),
      ),
       ),
    ),
    );
  }
}