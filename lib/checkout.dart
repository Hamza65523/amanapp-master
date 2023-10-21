import 'dart:async';
import 'package:amanapp/Profile.dart';
import 'package:amanapp/selectpaymentmethod.dart';
import 'package:amanapp/ticket.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  Completer<GoogleMapController> _controller = Completer();
  LatLng? _latLng = LatLng(28.6472799, 76.8130638);
  TextEditingController controller =
      TextEditingController(text: "Enter your address");
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.6289206, 77.2065322),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 1,
            ),
            Center(
              child: Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              'Help',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFFAA0F22),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 22),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 250,
                  ),
                  Image.asset('assets/Arrow - Left 2 (2).png'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 22.0),
                child: GestureDetector(
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/pay.png'),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03,
                                  ),
                                  Text('Payment methods',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                  ),
                                  Image.asset('assets/Pen 2.png'),
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 22.0),
                child: Container(
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('2x DS-2DE3A404IWG-E',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text('AED 00.00', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('2x DS-2DE3A404IWG-E',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
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
                              Text('Subtotal',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text('AED 00.00', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Delivery Fee',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text('AED 00.00', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('VAT',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text('AED 00.00', style: TextStyle(fontSize: 12)),
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
                padding: const EdgeInsets.only(top: 10, left: 28.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('By completing this order, I agree to all',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 2,
                    ),
                    Text('terms & conditions.  ',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffAA0F22),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text('Total',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
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
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 22.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectPaymentMethod()),
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
      )),
    );
  }
}
