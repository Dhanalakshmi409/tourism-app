import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:tourismapp/rateus.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {

double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Star Rating"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 201, 38, 179),
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Text('Rating: $rating',
            style:const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 32),
            RatingBar.builder(
          minRating: 1,
          itemSize: 46,
          itemPadding:const EdgeInsets.symmetric(horizontal: 4),
          itemBuilder: (context, index) =>const Icon(Icons.star,color: Colors.amber,) ,
           updateOnDrag: true,
           onRatingUpdate: ((rating) => setState(() {
             this.rating = rating;
           })
           ),
        ),
    ElevatedButton(onPressed: (() {
      Get.to(const RateusPage());
    }), child: Text("Thanks for Rating us"))
          ],
          
    ),
    ),
    );
  }
}

