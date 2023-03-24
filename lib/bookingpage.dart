import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/booknow.dart';
import 'package:tourismapp/mytheme.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 153, 25, 228),
        title: Text('Fill Booking Details',),),
      backgroundColor: Mytheme.splash,
      body: ListView(
        children: [
          // Container(
          //   alignment: Alignment.centerLeft,
          //   margin: const EdgeInsets.all(40),
          //   child: InkWell(onTap: () {
          //     Navigator.pop(context);
          //   },
          //   child:const Icon(Icons.arrow_back,
          //   size: 28,
          //   ),
          //   ),
          // ),
          // Column(crossAxisAlignment: CrossAxisAlignment.start,
          // children: [
          //   Container(
          //     margin:const EdgeInsets.only(left: 15,top: 10),
          //     alignment: Alignment.center,
          //     child:const Text("Fill booking Details",
          //     style: TextStyle(
          //       fontSize: 25,
          //       color: Color.fromARGB(162, 0, 0, 0),
          //       fontWeight: FontWeight.bold,
          //     ),
          //     ),
          //   ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20,right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 213, 152, 253),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "First Name",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20, right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 213, 152, 253),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Last Name",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20,right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 213, 152, 253),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20,right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 213, 152, 253),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20,right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 213, 152, 253),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Address",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 15,top: 20,right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 213, 152, 253),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "City",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              ),
            ),
             Container(
              margin:const EdgeInsets.only(left: 15,top: 20,right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 213, 152, 253),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 370,
              child: TextFormField(
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Postal/Zip Code",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              ),
            ),
          const SizedBox(height: 50),
             InkWell(
              onTap: () {
                Get.to(const BooknowScreen());
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 80),
                decoration: BoxDecoration(
                  color:const Color(0xFFFFB608),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("Book Now",
                style: TextStyle(
                 color: Colors.black,
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
                ),),
              ),
            )
          ],
          ),
      //   ],
      // ),
    );

      
    
  
    
    
  }
}