
// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/detail.dart';
import 'package:tourismapp/homepage.dart';
import 'package:tourismapp/mytheme.dart';
import 'package:tourismapp/postscreen.dart';

const stylistData = [
  {
    'ResortName':'JW Marriott',
    'StateName':'Mussoorie',
    'rating':'4.6',
    'rateAmount':'50',
    'imgUrl':'assets/images/jw marriot.jpeg',
    'bgColor':Color.fromARGB(244, 169, 228, 110),
},
{
    'ResortName':'Taj Madikeri',
    'StateName':'Coorg',
    'rating':'4.8',
    'rateAmount':'80',
    'imgUrl':'assets/images/taj madikeri.jpeg',
    'bgColor':Color.fromARGB(255, 247, 244, 106),
},
{
    'ResortName':'Brunton Boatyard',
    'StateName':'Kochi',
    'rating':'4.9',
    'rateAmount':'90',
    'imgUrl':'assets/images/bruntonboatyard.jpeg',
    'bgColor':Color.fromARGB(255, 190, 151, 125),
},
];
class CheckoutScreen extends StatefulWidget {
  
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:Color.fromARGB(255, 205, 82, 230),
body: SingleChildScrollView(
  child: SafeArea(child: Column(
    children: <Widget>[
      Padding(padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children:<Widget> [
        IconButton(onPressed: () {
        Get.to(const PostScreen());
        }, icon:const Icon(Icons.arrow_back_ios,
        size: 30,
        color: Color.fromARGB(255, 96, 5, 119),)),
        IconButton(onPressed: () {
          Get.to(HomePage());
        }, icon:const Icon(Icons.menu,
        size: 30,
        color: Color.fromARGB(255, 96, 5, 119),)
        ),
         ], 
      ),
      ),
   const SizedBox(
      height: 50,
     ), 
     Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration:const BoxDecoration(
        color: Mytheme.splash,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Padding(padding:const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
       const SizedBox(height: 50,),
        const Text("Resorts in Worldwide",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 24),
          ),
          StylistCard(stylistData[0]),
          StylistCard(stylistData[1]),
          StylistCard(stylistData[2]),
        ],
      ),),
     )
    ],
  )),
),
    );
  }
}
class StylistCard extends StatelessWidget {

final stylist;
const StylistCard(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/4-20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: stylist['bgColor'],
      ),
      child:Stack(
        children:<Widget> [
          Positioned(
            top: 40,
            right: -60,
            child: Image.asset(stylist['imgUrl'],
            width: MediaQuery.of(context).size.width*0.60,
            ),
            ),
            Padding(padding:const EdgeInsets.only(top: 30,left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(stylist['ResortName'],
                style:const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
              const SizedBox(
                  height: 5,
                ),
                Text(
                  stylist['StateName'],
                  style:const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              const SizedBox(
                  height: 10,
                ),
                Row(
                  children:<Widget> [
                  const Icon(Icons.star,
                    size: 16,
                    color: Color.fromARGB(255, 238, 116, 16),
                    ),
                  const SizedBox(
                      width: 10,
                    ),
                    Text(stylist['rating'],
                    style:const TextStyle(
                      color: Color.fromARGB(255, 19, 38, 54),
                    ),
                    ),
                  ],
                ),
              const SizedBox(
                  height: 20,
                ),
                MaterialButton(onPressed: () {
                  Get.to(DetailScreen(stylist));
                },
          color: Color.fromARGB(255, 218, 165, 228),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child:const Text('View profile',
                style: TextStyle(
                  color: Color.fromARGB(255, 189, 5, 5),
                ),
                ),
                ),
              ],
            ),)
        ],
      ),
    );
  }
}

