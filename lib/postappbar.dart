import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/homepage.dart';
import 'package:tourismapp/imagepicker.dart';

class PostAppBar extends StatefulWidget {
  const PostAppBar({super.key});

  @override
  State<PostAppBar> createState() => _PostAppBarState();
}

class _PostAppBarState extends State<PostAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.all(45),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.to(HomePage());
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding:const EdgeInsets.only(right: 2,left: 2,top: 2,bottom: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow:const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                ),
              ],
            ),
            child:const Icon(Icons.arrow_back,
            size: 28,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(ImagePickerPage());
          },
          child: Container(
            padding:const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow:const [
                BoxShadow(color: Colors.black26,blurRadius: 6),
              ],
            ),
            child:const Icon(Icons.favorite,color: Colors.redAccent,
            size: 28,),
          ),
        )
      ],
    ),

    );
  }
}