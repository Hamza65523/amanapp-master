import 'package:amanapp/Favourite.dart';
import 'package:amanapp/RefundDetails.dart';
import 'package:amanapp/Setting.dart';
import 'package:amanapp/TopWallet1.dart';
import 'package:amanapp/recent.dart';
import 'package:amanapp/topwalletaaed.dart';
import 'package:flutter/material.dart';

class TopWallet extends StatefulWidget {
  const TopWallet({super.key});

  @override
  State<TopWallet> createState() => _TopWalletState();
}

class _TopWalletState extends State<TopWallet> {
  bool a = true;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = true;
  bool g = false;
  bool h = false;
  Card(context, title, num, check) {
    return Container(
      decoration: BoxDecoration(
        color: check ? Color(0xFF200A0D) : Color(0xFFE6EBEF),
        border:
            Border.all(color: check ? Color(0xFF200A0D) : Color(0xFFE6EBEF)),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.19,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                color: check ? Colors.white : Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          Text(
            num,
            style: TextStyle(
                color: check ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }

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
            'Top up Wallet',
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
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Select or Enter the amount to top up',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TopWallet1()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    color: Color(0xFFF2F6FA),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Center(
                    child: Text(
                      'AED - 60',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Card(context, 'AED', '5', e),
                  onTap: () {
                    setState(() {});
                    e = true;
                    f = false;
                    g = false;
                    h = false;
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                GestureDetector(
                  child: Card(context, 'AED', '10', f),
                  onTap: () {
                    setState(() {});
                    e = false;
                    f = true;
                    g = false;
                    h = false;
                  },
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                // Card(context, 'AED', '15', false),
                GestureDetector(
                  child: Card(context, 'AED', '15', g),
                  onTap: () {
                    setState(() {});
                    e = false;
                    f = false;
                    g = true;
                    h = false;
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                // Card(context, 'AED', '20', false),
                GestureDetector(
                  child: Card(context, 'AED', '20', h),
                  onTap: () {
                    setState(() {});
                    e = false;
                    f = false;
                    g = false;
                    h = true;
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Card(context, 'AED', '25', false),
                GestureDetector(
                  child: Card(context, 'AED', '25', d),
                  onTap: () {
                    setState(() {});
                    b = false;
                    a = false;
                    c = false;
                    d = true;
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                // Card(context, 'AED', '50', true),
                GestureDetector(
                  child: Card(context, 'AED', '50', a),
                  onTap: () {
                    setState(() {});
                    b = false;
                    a = true;
                    c = false;
                    d = false;
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                // Card(context, 'AED', '100', false),
                GestureDetector(
                  child: Card(context, 'AED', '100', c),
                  onTap: () {
                    setState(() {});
                    b = false;
                    a = false;
                    c = true;
                    d = false;
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                // Card(context, 'AED', '200', false),
                GestureDetector(
                  child: Card(context, 'AED', '200', b),
                  onTap: () {
                    setState(() {});
                    b = true;
                    a = false;
                    c = false;
                    d = false;
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Favourite()),
                      );
                    },
                    child: Text('Top up using loyalty points',
                        style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            color: Color(0xffAA0F22))),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => RecentActivity()),
                  // );
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          _buildPopupDialog(context));
                },
                style: ButtonStyle(
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
                  height: 60,
                  child: Text(
                    'Confirm Top up',
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
        ));
  }
}

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

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
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 20, right: 20),
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 15.0, bottom: 10.0),
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
                        '+AED 00.00',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Image.asset('assets/creditcard.png'),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
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
                        'Added to AMAN Pay',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  )
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
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                    width: MediaQuery.of(context).size.width *
                                        0.03,
                                  ),
                                  Text('Payment methods',
                                      style: TextStyle(
                                          fontSize: 12,
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
                          thickness: 1,
                          color: Colors.grey,
                          height: 10,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
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
                                    width: MediaQuery.of(context).size.width *
                                        0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Mastercard',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      Text('**** 0192',
                                          style: TextStyle(
                                              fontSize: 10,
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
              ],
            ),
          ],
        ));
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset('assets/wonderfull.png'),
      ],
    ),
  );
}
