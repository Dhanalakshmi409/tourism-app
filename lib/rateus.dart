import 'package:flutter/material.dart';

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
        title: Text('Rate us'),
      ),
      backgroundColor: Colors.blue[100],
      body:
        Center(child: Image(image: AssetImage('assets/images/smily.jpeg'))),
    
       
    );
  }
}