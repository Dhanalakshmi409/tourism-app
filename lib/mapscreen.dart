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
        title:const Text("Google Maps"),
         ),
      body:
       Center(
         child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: 
          Column(
            children: [
              Image(image:AssetImage('assets/images/maptour.png') ),
              ElevatedButton(onPressed: () {
                Get.to(const MyLocation());
              }, child:const Text("Google Map"))
            ],
          ),
      ),
       ),
    );
  }
}