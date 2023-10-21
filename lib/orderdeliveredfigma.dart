import 'package:amanapp/CancledOrder.dart';
import 'package:amanapp/Help.dart';
import 'package:amanapp/Profile.dart';
import 'package:amanapp/ticket.dart';
import 'package:flutter/material.dart';

class YourOrder extends StatefulWidget {
  const YourOrder({super.key});

  @override
  State<YourOrder> createState() => _YourOrderState();
}

class _YourOrderState extends State<YourOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors
            .white, // Set the background color of the app bar to transparent
        elevation: 0, // Remove the shadow below the app bar
        leading: IconButton(
          icon: Image.asset('assets/whiteLeft.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Help()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 14.0),
              child: Text(
                'Help',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFAA0F22),
                ),
              ),
            ),
          )
        ],
        title: Text(
          'Your Order',
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
          Column(
            children: [
              SizedBox(height: 15.0),
              Image.asset('assets/Frame.png'),
              Text(
                'Order Delivered',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                '2/16/2023, 12:05 PM',
                style: TextStyle(fontSize: 8),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35.0, left: 21.0),
            child: Divider(
              thickness: 1,
              height: 35,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            100), // Set half of the width or height to achieve full rounded corners
                        color: Color(
                            0xFFAA0F22), // Replace with your desired background color
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Text('Order Placed',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Container(
                    width: 2.0, // Width of the vertical line
                    height: 30.0, // Height of the vertical line
                    child: CustomPaint(
                      painter: DashedLinePainter(
                          color: Color(0xFFAA0F22),
                          dashWidth: 4.0,
                          dashSpace: 3.0),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            100), // Set half of the width or height to achieve full rounded corners
                        color: Color(
                            0xFFAA0F22), // Replace with your desired background color
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Text('Preparing Order',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Container(
                    width: 2.0, // Width of the vertical line
                    height: 30.0, // Height of the vertical line
                    child: CustomPaint(
                      painter: DashedLinePainter(
                          color: Color(0xFFAA0F22),
                          dashWidth: 4.0,
                          dashSpace: 3.0),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            100), // Set half of the width or height to achieve full rounded corners
                        color: Color(
                            0xFFAA0F22), // Replace with your desired background color
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Text('Delivery in Progress',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Container(
                    width: 2.0, // Width of the vertical line
                    height: 30.0, // Height of the vertical line
                    child: CustomPaint(
                      painter: DashedLinePainter(
                          color: Color(0xFFAA0F22),
                          dashWidth: 4.0,
                          dashSpace: 3.0),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            100), // Set half of the width or height to achieve full rounded corners
                        color: Color(
                            0xFFAA0F22), // Replace with your desired background color
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Text('Delivered',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: Color(0xFFADADAD),
              thickness: 1,
              height: 35,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order Details',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10.0), // Add border radius
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
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
                    width: 1.0,
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
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                        padding: EdgeInsets.symmetric(horizontal: 7.0),
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
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => CreatePassword()),
                    // );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFAA0F22)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Rate Order',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFAA0F22),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CancledOrder()),
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

class DashedLinePainter extends CustomPainter {
  final Color color; // Color of the dashed line
  final double dashWidth; // Width of each dash
  final double dashSpace; // Space between each dash

  DashedLinePainter(
      {required this.color, required this.dashWidth, required this.dashSpace});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.0 // Width of the dashed line
      ..style = PaintingStyle.stroke;

    final dashPath = Path();
    final dashCount = (size.height / (dashWidth + dashSpace)).floor();

    for (var i = 0; i < dashCount; i++) {
      final y = i * (dashWidth + dashSpace);
      dashPath.moveTo(0, y);
      dashPath.lineTo(0, y + dashWidth);
    }

    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
