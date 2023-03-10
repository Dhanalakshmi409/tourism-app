import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/authcontroller.dart';
import 'package:tourismapp/mytheme.dart';
import 'package:tourismapp/splashscreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(AuthController()); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp ({Key? key}):super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Mytheme.myLightTheme,
      home: const SplashScreen(),
      );
  }
}

