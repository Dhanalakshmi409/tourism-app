// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tourismapp/postappbar.dart';
import 'package:tourismapp/postbottombar.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        image: DecorationImage(
         image: AssetImage("assets/images/agra.jpeg"),
        fit: BoxFit.fill,
        opacity: 0.7,
        ),
      ),
      child:const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          child:
         PostAppBar() ,
         preferredSize: Size.fromHeight(90),
         
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );

  }
}