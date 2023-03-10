import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourismapp/mytheme.dart';

class SocialLoginButton extends StatefulWidget {
  final Function() onGoogleClick;
  final Function() onFbClick;
  const SocialLoginButton({Key? key, required this.onFbClick,
  required this.onGoogleClick}):super(key: key);
  @override
  State<SocialLoginButton> createState() => _SocialLoginButtonState();
}

class _SocialLoginButtonState extends State<SocialLoginButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Material(
          color: Mytheme.redLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(
              color: Mytheme.redBorder,width: 0.2,
            ),
          ),
          child: InkWell(
            onTap:(() {
              
            }),
            borderRadius: BorderRadius.circular(5),
            child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 2),
              child: Column(
                children: [
                  Image.asset("assets/images/googletour.jpg",),
                 const SizedBox(
                    width: 6,
                  ),
                 const Text("Google",
                 style: TextStyle(color: Color.fromARGB(255, 20, 14, 14),
                 fontWeight: FontWeight.w600,
                 fontSize: 16,
                 ),
                 ),
                ],
              ),
            ),
          ),
        ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(child:Material(
          color: Mytheme.blueLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: Mytheme.blueBorder,width: 0.2),
          ),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
            child: Column(
              children: [
                Image.asset("assets/images/facebooktour.jpg"),
                 const SizedBox(
                  width: 3,
                ),
             const Text("facebook",
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                ),
              ],
            ),
          ),
        ),
        ),
        ),
      ],
    );
  }
}