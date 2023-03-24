import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/payment.dart';

class BooknowScreen extends StatefulWidget {
  const BooknowScreen({super.key});

  @override
  State<BooknowScreen> createState() => _BooknowScreenState();
}

class _BooknowScreenState extends State<BooknowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 153, 25, 228),
        title:const Text("BookNow"),
         ),
  body:Container(
      color: Color.fromARGB(255, 218, 168, 228),
      child: Padding(padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const  Text("Your booking has been Success",
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
              color: Colors.black,
              ),),
              Image.asset("assets/images/success1.png"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[600]),
                onPressed: (() {
                Get.to(const PaymentScreen());
              }), child:const Text("OK PAYNOW"))
            ],
          ),),
  ),
    );
  }
}