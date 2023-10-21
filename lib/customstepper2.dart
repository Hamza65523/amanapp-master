import 'dart:async';

import 'package:amanapp/Cart5.dart';
import 'package:amanapp/Order%20Delivery%20In%20Progress.dart';
// import 'package:amanapp/cart3.dart';
import 'package:amanapp/change.dart';
import 'package:amanapp/checkout1.dart';
import 'package:amanapp/orderplaced.dart';
import 'package:amanapp/selectpaymentmethod.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomSteppers2 extends StatefulWidget {
  CustomSteppers2({Key? key}) : super(key: key);

  @override
  State<CustomSteppers2> createState() => _CustomSteppersState();
}

class _CustomSteppersState extends State<CustomSteppers2> {
  int _currentIndex = 2;
  PageController _pageController = PageController();
  Completer<GoogleMapController> _controller = Completer();
  LatLng? _latLng = LatLng(28.6472799, 76.8130638);
  TextEditingController controller =
      TextEditingController(text: "Enter your address");
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.6289206, 77.2065322),
    zoom: 14.4746,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //let's add some padding press alt enter
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                StepperComponent(
                  onTap: () {},
                  currentIndex: _currentIndex,
                  index: 0,
                  // onTap: () {
                  //   setState(() {
                  //     _currentIndex=0;
                  //   });
                  //   _pageController.jumpToPage(0);
                  // },
                ),
                StepperComponent(
                  currentIndex: _currentIndex,
                  index: 1,
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                    _pageController.jumpToPage(1);
                  },
                ),
                StepperComponent(
                    currentIndex: _currentIndex,
                    index: 2,
                    onTap: () {
                      //   setState(() {
                      //   //   _currentIndex=2;
                      //   // });
                      //   // _pageController.jumpToPage(2);
                      // },),
                    })
              ],
            ),
          ),

          Expanded(
              child: PageView.builder(
                  //only scroll with bubbles
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    if (index == 0)
                      return Center(
                        child: Text('Page ${index}'),
                      );
                    else if (index == 1)
                      return SingleChildScrollView(
                          child: Column(children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 21,
                                ),
                                Image.asset('assets/place.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Delivery Address',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 170,
                                ),
                                Image.asset('assets/Pen 2.png'),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: 340,
                              height: 100,
                              child: GoogleMap(
                                mapType: MapType.normal,
                                initialCameraPosition: _kGooglePlex,
                                myLocationButtonEnabled: true,
                                myLocationEnabled: true,
                                onMapCreated: (GoogleMapController controller) {
                                  _controller.complete(controller);
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 23,
                                ),
                                Image.asset('assets/layer.png'),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'Work',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22.0),
                              child: Text(
                                'Old Mecca Al Moukarramah Rd,\nAl-Suhaifah',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 22.0, right: 22),
                              child: Divider(
                                height: 10,
                                thickness: 1,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Add a Note',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 250,
                                ),
                                Image.asset('assets/Arrow - Left 2 (2).png'),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 22.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Handle the container press event here
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => ChangeDelivery()),
                                  // );
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  padding: EdgeInsets.symmetric(vertical: 20.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset('assets/pay.png'),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.03,
                                                ),
                                                Text('Payment methods',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.45,
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                SelectPaymentMethod()),
                                                      );
                                                    },
                                                    child: Image.asset(
                                                        'assets/Pen 2.png')),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      Divider(
                                        height: 15.0,
                                        thickness: 1.0,
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                    'assets/paypal.png'),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.03,
                                                ),
                                                Column(
                                                  children: [
                                                    Text('Mastercard',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    Text('**** 0192',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Text('AED 00.00',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 22.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                padding:
                                    EdgeInsets.only(top: 15.0, bottom: 15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Add border radius
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/darkCard.png'),
                                            SizedBox(width: 5.0),
                                            Text('Order Summary',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        SizedBox(height: 15.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('2x DS-2DE3A404IWG-E',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text('AED 00.00',
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('2x DS-2DE3A404IWG-E',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text('AED 00.00',
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                      ]),
                                    ),
                                    Divider(
                                      thickness: 1,
                                      height: 35,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Column(children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Subtotal',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text('AED 00.00',
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Delivery Fee',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text('AED 00.00',
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        SizedBox(height: 10.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('VAT',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text('AED 00.00',
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 22.0),
                              child: Row(
                                children: [
                                  Text(
                                      'By completing this order, I agree to all',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  Text('terms & conditions.  ',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xffAA0F22),
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('Total',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text('(incl. VAT)',
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                ),
                                Text('AED 00.00',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 22.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                margin: EdgeInsets.only(bottom: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OrderPlaced()),
                                    );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xFFAA0F22)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    child: Text(
                                      'Place Order',
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
                            ),
                          ],

                          // Continar
                        ),
                      ]));
                    else if (index == 2)
                      return SingleChildScrollView(
                          child: Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 21,
                                  ),
                                  Image.asset('assets/place.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Delivery Address',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  Image.asset('assets/Pen 2.png'),
                                ],
                              ),
                              SizedBox(height: 15.0),
                              // Container(
                              //   width: 340,
                              //   height: 100,
                              //   child: GoogleMap(
                              //     mapType: MapType.normal,
                              //     initialCameraPosition: _kGooglePlex,
                              //     myLocationButtonEnabled: true,
                              //     myLocationEnabled: true,
                              //     onMapCreated: (GoogleMapController controller) {
                              //       _controller.complete(controller);
                              //     },
                              //   ),
                              // ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 23,
                                  ),
                                  Image.asset('assets/layer.png'),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Work',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                child: Text(
                                  'Old Mecca Al Moukarramah Rd,\nAl-Suhaifah',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 22.0, right: 22),
                                child: Divider(
                                  height: 10,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Add a Note',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 250,
                                  ),
                                  Image.asset('assets/Arrow - Left 2 (2).png'),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 22.0),
                                child: GestureDetector(
                                  onTap: () {
                                    // Handle the container press event here
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => ChangeDelivery()),
                                    // );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 20.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset('assets/pay.png'),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.03,
                                                  ),
                                                  Text('Payment methods',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.45,
                                                  ),
                                                  Image.asset(
                                                      'assets/Pen 2.png'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                        ),
                                        Divider(
                                          height: 15.0,
                                          thickness: 1.0,
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      'assets/paypal.png'),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.03,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text('Mastercard',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      Text('**** 0192',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Text('AED 00.00',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 22.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  padding:
                                      EdgeInsets.only(top: 15.0, bottom: 15.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Add border radius
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/darkCard.png'),
                                              SizedBox(width: 5.0),
                                              Text('Order Summary',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                          SizedBox(height: 15.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('2x DS-2DE3A404IWG-E',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('AED 00.00',
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          SizedBox(height: 10.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('2x DS-2DE3A404IWG-E',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('AED 00.00',
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                        ]),
                                      ),
                                      Divider(
                                        thickness: 1,
                                        height: 35,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: Column(children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Subtotal',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('AED 00.00',
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          SizedBox(height: 10.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Delivery Fee',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('AED 00.00',
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          SizedBox(height: 10.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('VAT',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('AED 00.00',
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                        ]),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 22.0),
                                child: Row(
                                  children: [
                                    Text(
                                        'By completing this order, I agree to all',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                    Text('terms & conditions.  ',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xffAA0F22),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('Total',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text('(incl. VAT)',
                                          style: TextStyle(
                                            fontSize: 12,
                                          )),
                                    ],
                                  ),
                                  Text('AED 00.00',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 22.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => SelectPaymentMethod()),
                                      // );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xFFAA0F22)),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 60,
                                      child: Text(
                                        'Place Order',
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
                              ),
                            ],

                            // Continar
                          ),
                        ],
                      ));
                  })),
        ],
      ),
    );
  }
}

class StepperComponent extends StatelessWidget {
  // index describe the position of our bubble
  int index;
  //currentIndex is index that is gonna change on Tap
  int currentIndex;
  //onTap CallBack
  VoidCallback onTap;

  bool isLast;
  StepperComponent({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    //now let's remove the ligne at the end of the row but also we need to remove unnecessary padding thus we need to remove the expanded
    //widget
    return isLast
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //this is the bubble
                  GestureDetector(
                    // onTap: onTap,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: index == currentIndex
                            ? Color(0xffAA0F22)
                            : Colors.transparent,
                        border: Border.all(
                            color: currentIndex >= index
                                ? Color(0xffAA0F22)
                                : Colors.black12),
                      ),
                    ),
                  ),
                  //this the ligne
                  Container(
                    height: 2,
                    //why index+1 we want to turn the ligne orange that precede the active bubble
                    color: currentIndex >= index + 1
                        ? Color(0xffAA0F22)
                        : Colors.black12,
                  ),
                ],
              ),
              //index+1 we dont wanna show 0 in the screen since our index will start at 0
              Text('Page ${index + 1}'),
            ],
          )
        : Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //this is the bubble
                    Expanded(
                        child: Container(
                      height: 4,
                      //why index+1 we want to turn the ligne orange that precede the active bubble
                      color: currentIndex >= index
                          ? Color(0xffAA0F22)
                          : Colors.black12,
                    )),
                    GestureDetector(
                      // onTap: onTap,
                      child: Container(
                        child: Center(
                            child: Text(
                          '${index + 1}',
                          style: TextStyle(
                              color: index <= currentIndex
                                  ? Colors.white
                                  : Colors.black),
                        )),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: index <= currentIndex
                              ? Color(0xffAA0F22)
                              : Colors.transparent,
                          border: Border.all(
                              color: currentIndex >= index
                                  ? Color(0xffAA0F22)
                                  : Colors.black12),
                        ),
                      ),
                    ),
                    //this the ligne
                    Expanded(
                        child: Container(
                      height: 4,
                      //why index+1 we want to turn the ligne orange that precede the active bubble
                      color: currentIndex >= index + 1
                          ? Color(0xffAA0F22)
                          : Colors.black12,
                    )),
                  ],
                ),

                Row(
                  children: [
                    //this is the bubble
                    Expanded(
                        child: Container(
                      height: 4,
                      //why index+1 we want to turn the ligne orange that precede the active bubble
                      color: Colors.white,
                    )),
                    if (index == 0)
                      Text('Menu')
                    else if (index == 1)
                      Text('Cart')
                    else if (index == 2)
                      Text('Checkout'),
                    //this the ligne
                    Expanded(
                        child: Container(
                      height: 4,
                      //why index+1 we want to turn the ligne orange that precede the active bubble
                      color: Colors.white,
                    )),
                  ],
                ),

                //index+1 we dont wanna show 0 in the screen since our index will start at 0
              ],
            ),
          );
  }
}
