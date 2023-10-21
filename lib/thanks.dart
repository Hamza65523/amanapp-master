import 'package:amanapp/Brian.dart';
import 'package:amanapp/Help.dart';
import 'package:flutter/material.dart';

class Thanks extends StatelessWidget {
  const Thanks({super.key});

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
            Image.asset('assets/env.png'),
            SizedBox(height: 15.0),
            Text(
              'Thank you',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
                'Your order has been successfully cancelled. If you were charged, the payment will be reverted into your payment method as soon as possible. If you used a voucher, you may reuse it again. Give us another try.')
          ]),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: ElevatedButton(
            onPressed: () {
              // Button action or function
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Help()),
              );
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(330, 50.0)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFFAA0F22)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: const Text('Close'),
          ),
        )
      ]),
    );
  }
}
