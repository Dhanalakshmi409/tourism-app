// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/homeappbar.dart';
import 'package:tourismapp/mapscreen.dart';
import 'package:tourismapp/mytheme.dart';
import 'package:tourismapp/postscreen.dart';

class HomePage extends StatelessWidget {
  
  var Category= [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ];

  List<String> imageList = [
    'assets/images/agra.jpeg',
    'assets/images/kaniyakumari.jpeg',
    'assets/images/gujarat.jpeg',
    'assets/images/save14.jpeg',
    'assets/images/save15.jpeg',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.splash,
      appBar:const PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(children: [
         Row(
                  children: [
                    Expanded(child: Container(
                      height: 200,
                      child: ListView.builder(
                        itemCount: imageList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: 
                      (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                    Get.to( const MapScreen());
                        },
                        child: Container(
                          width: 160,
                          padding:const EdgeInsets.all(20),
                          margin:const EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(imageList[index]),
                            fit: BoxFit.cover,
                            opacity: 2,
                            ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child:const Icon(Icons.bookmark_border_outlined,
                                  color: Colors.white,
                                  size: 30,
                                  ),
                                ),
                              const  Spacer(),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child:const Text("City Name",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),),
                                ),
                              ],
                            ),
                        ),
                      );  
                      }),
                    )),
                  ],
                ),
             const   SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(padding:const EdgeInsets.all(8),
                  child: Row(children: [
                    for(int i = 0 ; i < 6 ; i++ )
                    Container(
                      margin:const EdgeInsets.symmetric(horizontal: 10),
                       padding:const EdgeInsets.all(10),
                       decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                         BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                       ),
                        ],
                       ),
                       
                  child: Text( 
                    Category[i],
                  style:const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                    )
                  ],),
                  ),
                ),
            const SizedBox(height: 10),
               ListView.builder(
                physics:const NeverScrollableScrollPhysics(),
                itemCount: imageList.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
                   return Padding(padding:const EdgeInsets.all(15),
                   child: Column(
                     children: [
                       InkWell(
                        onTap: () {
                        Get.to(const PostScreen());
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(imageList[index]),
                              fit: BoxFit.cover,
                              opacity: 1
                              ),
                          ),
                        ),
                       ),
                       Padding(padding:const EdgeInsets.only(top: 10),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text("City Name",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                          Icon(Icons.more_vert,
                          size: 30,)
                        ],
                       ),
                       ),
                    const SizedBox(height: 5),
                       Row(
                        children:const [
                          Icon(Icons.star,
                          color: Color.fromARGB(255, 189, 116, 20),
                          size: 20,),
                          Text("4.5",
                          style: TextStyle(fontWeight:FontWeight.w500),),
                        ],
                       ),
                     ],
                   ),
                   );
                 }
                 ),
            ],
            ),
          ),
          ),
          ),
    );
  }
}