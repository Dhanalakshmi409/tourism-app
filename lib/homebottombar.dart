import 'package:flutter/material.dart';
import 'package:tourismapp/homepage.dart';
import 'package:tourismapp/mapscreen.dart';
import 'package:tourismapp/menupage.dart';
import 'package:tourismapp/profilepage.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
int selectedindex = 1;
void navtap(int index) {
  setState(() {
    selectedindex = index;
  });
}

final List<Widget> _list =[
  const ProfileScreen(),
  HomePage(),
  const MapScreen(),
  const MenuPage(),
];
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: () {
      //     Get.to(HomePage());
      //   }, icon:const Icon(Icons.arrow_back)),

      // ),
      body: _list[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: navtap,
        unselectedItemColor:const Color.fromARGB(255, 45, 132, 204),
        currentIndex: selectedindex,
        backgroundColor: Colors.pink[100],
        selectedItemColor: Colors.black,
        items:const[
   BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
   BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined),label: "Map"),
   BottomNavigationBarItem(icon: Icon(Icons.list),label: "List"),

        ] ),
    );
    
    
      }
}