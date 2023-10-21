import 'package:amanapp/Aman.dart';
import 'package:amanapp/Orders.dart';
import 'package:amanapp/Profile.dart';
import 'package:amanapp/Search.dart';
import 'package:amanapp/bottomnvigationbar.dart';
import 'package:amanapp/ticket.dart';
import 'package:flutter/material.dart';

class Brian extends StatefulWidget {
  const Brian({super.key});

  @override
  State<Brian> createState() => _BrianState();
}

class _BrianState extends State<Brian> {
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
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
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
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Brian',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  'How we can help?',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(width: 1.0, color: Color(0xFFDEE8F1))),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Orders()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Problem with Your Order?',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Image.asset('assets/leftarrow (2).png')
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        height: 30.0,
                        color: Color(0xFFDEE8F1),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle the container press event here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyTickets()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('My Tickets',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Image.asset('assets/question.png')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(width: 1.0, color: Color(0xFFDEE8F1))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Problem with Your Order?',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text('You will be redirected to Whatsapp',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ))
                            ],
                          ),
                          Image.asset('assets/msg.png')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(width: 1.0, color: Color(0xFFDEE8F1))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10.0),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          border:
                              Border.all(width: 1.0, color: Color(0xFFDEE8F1))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Search for help',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Search()),
                                );
                              },
                              child: Image.asset('assets/Search.png'))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Account Login Issues',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Image.asset('assets/rightarrow.png')
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      height: 30.0,
                      color: Color(0xFFDEE8F1),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Payment Issues',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Image.asset('assets/rightarrow.png')
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      height: 30.0,
                      color: Color(0xFFDEE8F1),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => AmanPay()),
                        // );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Voucher Issues',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Image.asset('assets/rightarrow.png')
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      height: 30.0,
                      color: Color(0xFFDEE8F1),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('App Issues',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Image.asset('assets/rightarrow.png')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
