// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/bookingpage.dart';
import 'package:tourismapp/homepage.dart';
import 'package:tourismapp/imagepicker.dart';
import 'package:tourismapp/loginscreen.dart';
import 'package:tourismapp/mytheme.dart';
import 'package:tourismapp/payment.dart';
import 'package:tourismapp/ratingpage.dart';
import 'package:tourismapp/signuppage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 165, 228),
      appBar: AppBar(title: const Text('profile',),
      backgroundColor: Color.fromARGB(255, 153, 25, 228)),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 167, 168, 228),
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: Image.asset("assets/images/person.png"),
          accountName:const Text("User name"),
          accountEmail:const Text("User e-mail address"),
          ),
          ListTile(
            leading:const Icon(Icons.person,
            color: Colors.black,),
            
            title:const Text("profile"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: 
              (context) =>const ProfileScreen(),));
            },
          ),
         ListTile(
          leading:const Icon(Icons.home,color: Colors.red,),
          title:const Text("Home"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          },
         ) ,
   ListTile(
  leading: Icon(Icons.camera_alt,color: Colors.green,),
  title: Text("Photos"),
  onTap: () {
    Get.to(const ImagePickerPage());
  },
),
 ListTile(
  leading:const Icon(Icons.star,color: Colors.yellow,),
  title:const Text("Rate as"),
  onTap: () {
    Get.to(const RatingScreen());
  },
),
 ListTile(
  leading:const Icon(Icons.book_online,color: Colors.brown,),
  title:const Text("Booknow"),
  onTap: () {
    Get.to(const BookingScreen());
  },
),
// const ListTile(
//   leading: Icon(Icons.call,color: Colors.blue,),
//   title: Text("contact as"),
// ),
 ListTile(
  leading:const Icon(Icons.payment_outlined,color: Color.fromARGB(255, 207, 9, 85),),
  title:const Text("Payments"),
  onTap: (() {
    Get.to(const PaymentScreen());
  }),
),
ListTile(
  leading:const Icon(Icons.person_add,color: Color.fromARGB(255, 10, 112, 24),),
  title:const Text("SignUp"),
  onTap: (() {
    Get.to(const SignUpScreen());
  }),
),
ListTile(
  leading:const Icon(Icons.lock_person,color: Color.fromARGB(255, 18, 21, 199),),
  title:const Text("Login"),
  onTap: (() {
    Get.to(const LogInScreen());
  }),
),
      ],
    ),

),
    body:SafeArea(child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const <Widget>[
                Text("Tourism App",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                )
                ),
                Text("Mysore"),
                Text("Ragavendhira colony,gt park"),
              ],
            ),),
            const Divider(),
            Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Icon(Icons.call,color: Colors.blue,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profiletour.jpeg'),
                    radius: 55.0,
                  ),
                ),
                const Icon(Icons.message,
                color: Colors.blue,
                ),
              ],
            ),
            ),
            const Divider(),
            Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:const <Widget>[
CustomListTile(
  title: '4.8',
  subtitle: 'Ranking',
),
CustomListTile(
  title: '59',
  subtitle: 'Following',
),
CustomListTile(
  title: '109',
  subtitle: 'Followers',
),
   ],
            ),
            ),
            const Divider(),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.2,
              child: const Center(
                child: Text('Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 5,
                softWrap: true,
                ),
              ),
            ),
const Divider(),
Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children:const <Widget> [
    Icon(Icons.call),
    Text("044-26851425",
    style:TextStyle(
      fontWeight: FontWeight.bold,
    fontSize: 18) ,),
    SizedBox(height: 20,),
    Icon(Icons.mail),
    Text("dhanam@gmail.com",
    style:TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15),
      )
  ],
),)
          ],
        ),
    
      ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget{
final String? title;
final String? subtitle;

const CustomListTile({this.title,this.subtitle});

@override 
Widget build(BuildContext context){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Text(title??'',
  style: const TextStyle(fontWeight: FontWeight.bold),
  ),
  Text(subtitle??'',)
],
  );
}
}

