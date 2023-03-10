import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/homebottombar.dart';
import 'package:tourismapp/mapscreen.dart';
import 'package:tourismapp/newmap.dart';
import 'package:tourismapp/profilepage.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.only(top:40, left:20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
          Get.to(const ProfileScreen());
          },
          child: Container(
            padding:const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:const [
               BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.circular(10)
            ),
            child:const Icon(Icons.sort_rounded,
            size: 28,),
          ),
        ),
        Row(children:const [
          Icon(Icons.location_on,
          color: Color(0xFFF65959),
          ),
          Text("Explore New Destination",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          ),
        ],
),
      InkWell(
        onTap: () {
          Get.to(MapScreen());
        },
        child: Container(
          padding:const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
              ),
            ],
       borderRadius: BorderRadius.circular(15),
          ),
          child:const Icon(Icons.search,
          size: 28,),
        ),
      ),
 InkWell(
        onTap: () {
          Get.to(const HomeBottomBar());
        },
        child: Container(
          padding:const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
              ),
            ],
       borderRadius: BorderRadius.circular(15),
          ),
          child:const Icon(Icons.notifications_outlined
          ,
          size: 28,),
        ),
      ),      ],
    ),
    );
  }
}