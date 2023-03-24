import 'package:flutter/material.dart';
import 'package:tourismapp/mytheme.dart';

class RateusPage extends StatefulWidget {
  const RateusPage({super.key});

  @override
  State<RateusPage> createState() => _RateusPageState();
}

class _RateusPageState extends State<RateusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Rate us'),
      ),
      backgroundColor: Colors.white,
      body:
        Center(
          child: 
          Image(image: AssetImage('assets/images/rateus.jpeg'),
          fit: BoxFit.cover)),
    
       
    );
  }
}