import 'package:amanapp/createyouraccount.dart';
import 'package:amanapp/loginscreen.dart';
import 'package:flutter/material.dart';

import 'createpassword.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/pngwing 2.png'),
          //     fit: BoxFit.cover,
          //   ),
          // ),

          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage('assets/logoaman.png.png'),
                  size: 200, // set the size of the icon
                  color: Color(0xFFAA0f22), // set the color of the icon
                ),
                SizedBox(height: 26),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            margin: EdgeInsets.only(top: 290),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 600,
                // padding: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [Image.asset('assets/pngwing 2.png')],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
