import 'package:amanapp/Cart5.dart';

import 'package:amanapp/change.dart';
import 'package:flutter/material.dart';

class Cart2 extends StatefulWidget {
  const Cart2({super.key});

  @override
  State<Cart2> createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors
            .transparent, // Set the background color of the app bar to transparent
        elevation: 0, // Remove the shadow below the app bar
        leading: IconButton(
          icon: Image.asset('assets/left.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Cart',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              // width: MediaQuery.of(context).size.width * 0.9,

              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 2), // Offset in x and y directions
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/cart.png'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Standard Delivery',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text('Delivery time 24 hours',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Change',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFAA0F22),
                              fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.04,
            ),
            Container(
              // width: MediaQuery.of(context).size.width * 0.9,

              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 2), // Offset in x and y directions
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/Trash Bin Trash.png'),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 16.png'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DS-2DE3A404IWG-E',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text('AED 00.00',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 1.0),
                        decoration: BoxDecoration(
                            color: Color(0xff200A0D),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(
                                    0, 2), // Offset in x and y directions
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        child: Text('-',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Container(
                        child: Text('03',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 1.0),
                        decoration: BoxDecoration(
                            color: Color(0xff200A0D),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.2), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(
                                    0, 2), // Offset in x and y directions
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        child: Text('+',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
