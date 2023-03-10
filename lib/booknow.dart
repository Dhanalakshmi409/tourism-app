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
    return Container(
  
      color: Colors.amber,
      child: Padding(padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const  Text("Your booking has been Success",
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
              color: Colors.black,
              ),),
              Image.asset("assets/images/success1.png"),
              ElevatedButton(onPressed: (() {
                Get.to(const PaymentScreen());
              }), child: Text("OK PAYNOW"))
            ],
          ),),

    );
  }
}