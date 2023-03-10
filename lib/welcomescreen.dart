import 'package:flutter/material.dart';
import 'package:tourismapp/welcomescreen1.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

List<String> images = [
  'assets/images/agra1.jpeg',
  'assets/images/gujarat.jpeg',
  'assets/images/saopaulo.jpeg'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: PageView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: images.length,
  itemBuilder: ((_, index) {
     return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:
         AssetImage(images[index]),
        fit: BoxFit.cover,
        opacity: 4,
        ),
      ),
      child: Material(
        color: Colors.transparent,
      child: SafeArea(
        child: Padding(
        padding:const EdgeInsets.symmetric(vertical: 65,horizontal: 25),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text("Enjoy",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
            ),
       const  SizedBox(height:2),
         Text("the world!",
         style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 35,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
         ),),
 const SizedBox(height: 12),
Text("It aims to inspire the debate around rethinking tourism for development, including through education and jobs, and tourism's impact on the planet and opportunities to grow more sustainably.",
style: TextStyle(
  color: Colors.white.withOpacity(0.7),
  fontSize: 16,
  letterSpacing: 1.2,
),
),
 const SizedBox(height: 30),
InkWell(onTap: () {
Navigator.push(context, MaterialPageRoute(
  builder: (context)=>const WelcomeScreen1()),);

},
child: Ink(
  padding:const EdgeInsets.all(15),
  decoration:  BoxDecoration(color: Colors.white,
  borderRadius: BorderRadius.circular(12),
  ),
  child:const Icon(Icons.arrow_forward_ios,
  color: Colors.black54,
  size: 20,
),
),
)
          ],
         ),
         ),
         ),
      ),
    );
  }),
    ),
    );
  }
}