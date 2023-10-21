import 'package:amanapp/Term.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/material.dart';

class RateOrder extends StatefulWidget {
  const RateOrder({super.key});

  @override
  State<RateOrder> createState() => _RateOrderState();
}

class _RateOrderState extends State<RateOrder> {
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
              // Handle back button press
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Rate Your Order',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius:
                    BorderRadius.circular(8.0), // Set the border radius
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Items',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/Ellipse 16.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                                '2x DS-2DE3A404IWG-E'),
                            Text(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                                'AED 00.00')
                          ],
                        )
                      ],
                    )
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      'How was your Order?'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                      'Booking #564963 '),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius:
                    BorderRadius.circular(8.0), // Set the border radius
              ),
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(), // Add border to the text field
                  labelText: 'Write your feedback here',
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Container(
              width: MediaQuery.of(context).size.width * 0.92,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      const Size(double.infinity, 50)),
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
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 35,
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFAA0F22),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(20.0),
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height * 0.20,
            //   margin: EdgeInsets.only(left: 10.0, right: 10.0),
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.grey,
            //       width: 1.0,
            //     ),
            //     borderRadius:
            //         BorderRadius.circular(8.0), // Set the border radius
            //   ),
            //   child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         TextField(
            //         decoration: InputDecoration(
            //           // Add border to the text field
            //           labelText: 'Write your feedback here',
            //         ),
            //       ),

            //       ]),
            // )
          ],
        ));
  }
}
