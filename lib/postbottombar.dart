// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/bookingpage.dart';
import 'package:tourismapp/checkout.dart';
import 'package:tourismapp/menupage.dart';

class PostBottomBar extends StatefulWidget {
  const PostBottomBar({super.key});

  @override
  State<PostBottomBar> createState() => _PostBottomBarState();
}

class _PostBottomBarState extends State<PostBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
      padding:const EdgeInsets.only(top: 20,left: 20,right: 20),
      decoration:const BoxDecoration(
        color: Color.fromARGB(255, 212, 158, 158),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(padding:const EdgeInsets.only(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              const  Text("City Name,Country",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
                ),
                Row(children:const [
               Icon(Icons.star, 
                  color: Colors.amber,
                  size: 25,
                  ),
                  Text("4.5",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ],
                ),
              ],
              ),
           const SizedBox(height: 25),
            const  Text("The Taj Mahal is an invory-white marble mausoleum on the south bank of the yamuna river in the India city of Agra.It was commisioned in 1632 by the Mughal emperor,Shah Jahan(reigned from 1628 to 1658),to house the tomb of his favourite wife,Mumtaz mahal.Taj mahal is built by 20,000 artisans in a span of 22 years",
              style: TextStyle(color: Colors.black87,
              fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              ),
            const SizedBox(height: 20),
              Row(
                children: [
                  Padding(padding:const EdgeInsets.only(right: 5),
                child: Expanded(child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("assets/images/save6.jpeg",
                  fit: BoxFit.cover,
                  width: 120,
                  height: 100,
                  ),
                ),
                ),
                ),
               Padding(padding:const EdgeInsets.only(right: 5),
                child: Expanded(child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("assets/images/save11.jpeg",
                  fit: BoxFit.cover,
                  width: 120,
                  height: 100,
                  ),
                ),
                ),
                ),
               Expanded(child: Container(
                alignment: Alignment.center,
                width: 120,
                height: 100,
                margin:const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                  image:const DecorationImage(
                    image: AssetImage("assets/images/save4.jpeg"),
                    fit: BoxFit.cover,
                    opacity: 0.4,
                    ),
                ),
                
                child:
                InkWell(
                  onTap: () {
                    Get.to(MenuPage());
                  },
                  child: const Text("10+",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),
               ),
               ), 
                ],
              ),
            const  SizedBox(height: 10),
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color:const Color(0xFFF5F9FD),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [ 
            Icon(Icons.discount,
              color: Color(0xFFFFB608),
              ),
              Text("coupons",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(162, 0, 0, 0),
              ),
              ),
            ],
          ),
          ),
        // const  Divider(height: 25, thickness: 1),
        // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [
        //   Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text("Total",
        //       style: TextStyle(
        //         fontSize: 23,
        //         color: Color.fromARGB(162, 0, 0, 0),
        //         fontWeight: FontWeight.bold,
        //       ),
        //       ),
        //       SizedBox(height: 8),
        //       Text("\$470",
        //       style: TextStyle(
        //         fontSize: 23,
        //         color: Color(0xFFFFB608),
        //         fontWeight: FontWeight.bold,
        //       ),
        //       ),
        //       ],
        //   ),
          GestureDetector(
            onTap: () {
              Get.to(CheckoutScreen());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFB608),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text("Check Out",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ),
       ],
        ),
      ),

                    // Container(
                      // padding:const EdgeInsets.all(10),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10),
                      //   color: Colors.white,
                      //   boxShadow:const [
                      //     BoxShadow(
                      //       color: Colors.black26,
                      //       blurRadius: 4,
                      //     ),
                      //   ],
                      // ),
                    //   child:const Icon(Icons.bookmark_outline,size: 40),
                    // ),
              // Container(
              //   child: ElevatedButton(onPressed: () {
              //     Get.to(const BookingScreen());
              //   }, child:const Text("Book Now",
              //   style: TextStyle(
              //     color: Colors.white,fontSize: 26,
              //     fontWeight: FontWeight.w500
              //   ),)),
              // ),
               ],
                ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}