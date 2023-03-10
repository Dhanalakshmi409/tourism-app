import 'package:flutter/material.dart';
import 'package:tourismapp/homepage.dart';

class WelcomeScreen1 extends StatefulWidget {
  const WelcomeScreen1 ({super.key});

  @override
  State<WelcomeScreen1> createState() => _WelcomeScreen1State();
}

class _WelcomeScreen1State extends State<WelcomeScreen1> {

List<String> imageslist = [
  'assets/images/gate.jpeg',
  'assets/images/shiva.jpeg',
  'assets/images/buddha.jpeg'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: imageslist.length,
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:
         AssetImage(imageslist[index]),
        fit: BoxFit.fill,
        opacity: 4,
        )
      ),
      child: Material(
        color: Colors.transparent,
      child: SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 65,horizontal: 25),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text("Where do",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
            ),
       const  SizedBox(height:2),
         Text("you want to go ?",
         style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 35,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
         ),),
 const SizedBox(height:12),
 Text("Which all places are offers to sort of arts and culture related",
style: TextStyle(
  color: Colors.white.withOpacity(0.7),
  fontSize: 16,
  letterSpacing: 1.2,
),
),
 const SizedBox(height: 30),
InkWell(onTap: () {
Navigator.push(context, MaterialPageRoute(
  builder: (context)=>HomePage()),);

},
child: Ink(
  padding:const EdgeInsets.all(15),
  decoration:  BoxDecoration(color: Colors.white,
  borderRadius: BorderRadius.circular(12),
  ),
  child:const Icon(Icons.arrow_forward,
  color: Colors.black54,
  size: 30,
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