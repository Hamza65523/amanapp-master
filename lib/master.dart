import 'package:amanapp/Profile.dart';
import 'package:amanapp/RefundDetails.dart';
import 'package:amanapp/TopWallet.dart';
import 'package:amanapp/ticket.dart';
import 'package:flutter/material.dart';

class Master extends StatefulWidget {
  const Master({super.key});

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0, // Remove the shadow below the app bar
        leading: IconButton(
          icon: Image.asset('assets/whiteLeft.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Available credit',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/creditcard.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TopWallet()),
                            );
                          },
                          child: Text(
                            'Top up',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFAA0F22)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'AED 00.00',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Column(
            children: [
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
                  padding: EdgeInsets.symmetric(vertical: 15.0),
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          height: 35.0,
                          thickness: 1.0,
                        ),
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
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    Text('**** 0192',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

Card(context, orderID, title, time, items, btnText, img) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.95,
    padding: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0), // Add border radius
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    img,
                    scale: 0.8,
                  ),
                  SizedBox(width: 10.0),
                  Text(orderID,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
              Text(btnText,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 5.0),
            Text(title, style: TextStyle(fontSize: 12)),
            SizedBox(height: 5.0),
            Text(time, style: TextStyle(fontSize: 12)),
            SizedBox(height: 5.0),
          ]),
        ),
        SizedBox(height: 10.0),
        Divider(
          height: 2.0,
          color: Colors.grey,
        )
      ],
    ),
  );
}
