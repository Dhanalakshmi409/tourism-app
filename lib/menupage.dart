// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tourismapp/mytheme.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

@override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

List<String> AssetImage=[
'assets/images/agra.jpeg',
'assets/images/australia.jpeg',
'assets/images/azaditower.jpeg',
'assets/images/buddha.jpeg',
'assets/images/doladabad.jpeg',
'assets/images/gate.jpeg',
'assets/images/gujarat.jpeg',
'assets/images/kerala.jpeg',
'assets/images/kaniyakumari.jpeg',
'assets/images/mall.jpeg',
'assets/images/milad.jpeg',
'assets/images/newdelhi.jpeg',
'assets/images/newyork.jpeg',
'assets/images/paris.jpeg',
'assets/images/rome.jpeg',
'assets/images/saopaulo.jpeg',
'assets/images/shiva.jpeg',
'assets/images/tehran.jpeg',
'assets/images/venice.jpeg',
'assets/images/lighting.jpeg',
'assets/images/save1.jpeg',
'assets/images/save2.jpeg',
'assets/images/save3.jpeg',
'assets/images/save4.jpeg',
'assets/images/save5.jpeg',
'assets/images/save6.jpeg',
'assets/images/save7.jpeg',
'assets/images/save8.jpeg',
'assets/images/save9.jpeg',
'assets/images/save10.jpeg',
'assets/images/save11.jpeg',
'assets/images/save12.jpeg',
'assets/images/save13.jpeg',
'assets/images/save14.jpeg',
'assets/images/save15.jpeg',
'assets/images/save16.jpeg',
'assets/images/save17.jpeg',
'assets/images/save18.jpeg',
'assets/images/save19.jpeg',
'assets/images/save20.jpeg',

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.blue,
        title:const Text("Most Visited Places"),),
      body: Container(
        color:Mytheme.splash,
        child: GridView.builder(
          itemCount: AssetImage.length,
          itemBuilder: ((context, index) => 
          Image.asset(AssetImage[index])
          ),
  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      ),
     ),
      ),
      );
  }
}