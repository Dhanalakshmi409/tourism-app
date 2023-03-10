import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/bookingpage.dart';
import 'package:tourismapp/imagepicker.dart';
import 'package:tourismapp/menupage.dart';

var serviceList =[
  {'title':'VIP Rooms', 'duration':'per Day' ,'price':20000},
   {'title':'Queen Rooms', 'duration':'per Day','price':15000},
    {'title':'King Rooms', 'duration':'per Day' ,'price':12500},
     {'title':'Quad Rooms', 'duration':'per Day' ,'price':10000},
];

class DetailScreen extends StatelessWidget{
final stylist;

   DetailScreen(this.stylist);

//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }


// class _DetailScreenState extends State<DetailScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height/2+10,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset("assets/images/mall.jpeg",
              fit: BoxFit.fill,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.purple.withOpacity(0.2),
              ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon:const Icon(Icons.arrow_back_ios,color: Colors.white,),
          ),
          ),
 Positioned(
  top: MediaQuery.of(context).size.height/3-40,
  child: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration:const BoxDecoration(
      color: Color.fromARGB(255, 152, 232, 243),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(150),
      ),
    ),
    child: Padding(padding:const EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
      const SizedBox(
          height: 70,
        ),
      const Text('Book List',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
      const SizedBox(
          height: 20,
        ),
        ServiceTile(serviceList[0]),
        ServiceTile(serviceList[1]),
        ServiceTile(serviceList[2]),
        ServiceTile(serviceList[3]),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding:const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/5,
            color:const Color.fromARGB(255, 34, 160, 192),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget> [
                    Text('resorts and Spa.',
                    style:TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),),
                    Text('5 star',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                  ],
                ),
              const  SizedBox(height: 10,),
              const  Text('A five-star property provides flawless guest services in a state-of-the-art facility.As a five-star property , such as premium dining options & personalized services to its guests.With no detail being overlooked,these hotels commonly even provides high-end, luxuary toiletries for guests. ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
          ),
        ),
      ],
    ),
    ),
  ),
  ),  
  Positioned(
    top: MediaQuery.of(context).size.height / 3 - 120,
    child:Padding(padding:const EdgeInsets.symmetric(horizontal: 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:<Widget> [
        Container(
          width: MediaQuery.of(context).size.width /3 - 20,
          height: MediaQuery.of(context).size.height /6 + 20,
          decoration: BoxDecoration(
            color: stylist['bgColor'],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: -1.0,
                child: Image.asset(stylist['imgUrl'],
              scale: 1.7,
              ),
              ),
            ],
          ),
        ),
const SizedBox(
  width: 20,
),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:<Widget> [
    Text(
      stylist['ResortName'],
      style:const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
   const SizedBox(
      height: 5,
    ),
    Text(
      stylist["StateName"],
      style:const TextStyle(
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 115, 102, 165),
      ),
    ),
  const SizedBox(height: 10,),
    Row(
      children: <Widget>[
      const Icon(Icons.star,
        size: 16,
        color: Colors.amber,),
      const SizedBox(width: 5),
        Text(
          stylist['rating'],
          style:const TextStyle(
            color: Colors.red,
          ),
        ),
      const SizedBox(
          width: 5,
        ),
        Text('(${stylist['rateAmount']})',
        style:const TextStyle(color: Color.fromARGB(255, 36, 32, 32),
        ),
        ),
        ],
    )
  ],
),
      ],
    ),
    ),
    ),  
    Positioned(
      right: 10,
      top: MediaQuery.of(context).size.height/3-55,
      child:MaterialButton(onPressed: () {
       Get.to(const ImagePickerPage());
      },
      padding:const EdgeInsets.all(10),
      shape:const CircleBorder(), 
      color: Colors.white,
      child:const Icon(Icons.favorite_border,
      color: Colors.red,),),
    ),
      ],
    ),
  ),
),
    );
  }
}

class ServiceTile extends StatelessWidget {

final Service;
ServiceTile(this.Service);
  @override
  Widget build(BuildContext context) {
    return Container(
margin:const EdgeInsets.only(bottom: 30),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width/2-40,
          child: Text(Service['title'],
          style:const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
        ),
      const SizedBox(
          height: 5,
        ),
        Text('${Service['duration']}Min',
        style:const TextStyle(
          color: Color.fromARGB(255, 129, 86, 86),
        ),),
      ],
    ),
    Text('\$${Service['price']}',
    style:const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),),
    MaterialButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => BookingScreen()));
    },
    color: Colors.pink,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child:const Text('Book', style: TextStyle(color: Colors.white),
    ),
    ),
  ],
),
    );
  }
}