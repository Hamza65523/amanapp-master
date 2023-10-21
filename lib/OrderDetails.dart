import 'package:amanapp/Cart5.dart';
import 'package:amanapp/Profile.dart';
import 'package:amanapp/RateOrder.dart';
import 'package:amanapp/TopWallet.dart';
import 'package:amanapp/change.dart';
import 'package:amanapp/reorderdetail.dart';
import 'package:amanapp/ticket.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(
            0xFF200A0D), // Set the background color of the app bar to transparent
        elevation: 0, // Remove the shadow below the app bar
        leading: IconButton(
          icon: Image.asset('assets/whiteLeft.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Order Details',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            /* Hi, Brian How we can help? */

            decoration: BoxDecoration(
              // color: Colors.blue,
              color: Color(0xFF200A0D),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            alignment: Alignment.center,
            child: Positioned.fill(
                child: Container(
              // margin: EdgeInsets.only(top: 40.0),
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 5.0, bottom: 15.0),
              /* Hi, Brian How we can help? */

              decoration: BoxDecoration(
                // color: Colors.blue,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '-AED 00.00',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/tranferCaarad.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '14/02/2023, 2:47 PM',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.004,
                      ),
                      Text(
                        'Paid',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10.0), // Add border radius
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order ID: 156460',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Image.asset('assets/Vector2.png'),
                        SizedBox(width: 5.0),
                        Text('Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                            style: TextStyle(fontSize: 13)),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Text('Yesterday, 12:05 AM',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Text('2 Items', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(height: 5.0),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10.0), // Add border radius
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(children: [
                        Row(
                          children: [
                            Image.asset('assets/darkCard.png'),
                            SizedBox(width: 5.0),
                            Text('Order Summary',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2x DS-2DE3A404IWG-E',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2x DS-2DE3A404IWG-E',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ]),
                    ),
                    Divider(
                      thickness: 1,
                      height: 35,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2x DS-2DE3A404IWG-E',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2x DS-2DE3A404IWG-E',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle the container press event here
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ChangeDelivery()),
                  // );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/browncreditcard.png'),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.03,
                                ),
                                Text('Payment methods',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Divider(
                        height: 15.0,
                        thickness: 1.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/paypal.png'),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.03,
                                ),
                                Column(
                                  children: [
                                    Text('Mastercard',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    Text('**** 0192',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                            Text('AED 00.00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                // margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RateOrder()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
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
                    height: 60,
                    child: Text(
                      'Rate Order',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFAA0F22),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                // margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReorderDertails()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFAA0F22)),
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
                    height: 60,
                    child: Text(
                      'Select Items to Reorder',
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
            ],

            // Continar
          ),
        ],
      )),
    );
  }
}
