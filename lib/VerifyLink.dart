import 'package:amanapp/Brian.dart';
import 'package:flutter/material.dart';

class VerifyLink extends StatelessWidget {
  const VerifyLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        AppBar(
          backgroundColor: Colors
              .transparent, // Set the background color of the app bar to transparent
          elevation: 0, // Remove the shadow below the app bar
          leading: IconButton(
            icon: Image.asset('assets/left.png'),
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(children: [
            Image.asset('assets/Group 514315.png'),
            SizedBox(height: 15.0),
            Text(
              'We’ve sent a verification link to',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'brian.williams@gmail.com',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.0),
            Text(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                'Please click the verification link in your inbox')
          ]),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Button action or function
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Brian()),
                  // );
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(330, 50.0)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFAA0F22)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Color(0xFFAA0F22), // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                  ),
                ),
                child: const Text('Check inbox'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Button action or function
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Brian()),
                  // );

                                Navigator.pop(context);
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(330, 50.0)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFAA0F22)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text('Resend verification link'),
              ),
            )
          ],
        )
      ]),
    );
  }
}
