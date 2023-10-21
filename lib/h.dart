import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
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
                  AssetImage('assets/logo.png'),
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
            child: Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 400,
                  padding: EdgeInsets.only(top: 50.0),
                  child: Column(
                    children: [Image.asset('assets/pngwing 2.png')],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
