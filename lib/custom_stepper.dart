import 'package:amanapp/AddVoucher.dart';
import 'package:amanapp/Cart5.dart';
import 'package:amanapp/Order%20Delivery%20In%20Progress.dart';
// import 'package:amanapp/cart3.dart';
import 'package:amanapp/change.dart';
import 'package:amanapp/checkout1.dart';
import 'package:amanapp/orderplaced.dart';
import 'package:amanapp/selectpaymentmethod.dart';
import 'package:flutter/material.dart';

class CustomSteppers extends StatefulWidget {
  const CustomSteppers({Key? key}) : super(key: key);

  @override
  State<CustomSteppers> createState() => _CustomSteppersState();
}

class _CustomSteppersState extends State<CustomSteppers> {
  int _currentIndex = 1;
  PageController _pageController = PageController();

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
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Container(
                              // width: MediaQuery.of(context).size.width * 0.9,

                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 15.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
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
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/cart.png'),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Standard Delivery',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
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
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CartScreen3()),
                                          );
                                        },
                                        child: Text('Change',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFFAA0F22),
                                                fontWeight: FontWeight.bold)),
                                      )
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'DS-2DE3A404IWG-E',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
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
                                                color: Colors.black.withOpacity(
                                                    0.2), // Shadow color
                                                spreadRadius:
                                                    2, // Spread radius
                                                blurRadius: 5, // Blur radius
                                                offset: Offset(0,
                                                    2), // Offset in x and y directions
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Text('-',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            )),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      Container(
                                        child: Text('03',
                                            style: TextStyle(
                                              fontSize: 15,
                                            )),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 1.0),
                                        decoration: BoxDecoration(
                                            color: Color(0xff200A0D),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.2), // Shadow color
                                                spreadRadius:
                                                    2, // Spread radius
                                                blurRadius: 5, // Blur radius
                                                offset: Offset(0,
                                                    2), // Offset in x and y directions
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(5)),
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
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                  top: 15.0,
                                  bottom: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Add more items',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFAA0F22),
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8.09),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Popular Items',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  margin: EdgeInsets.only(left: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        10), // Set the border radius
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(
                                            0.5), // Set the shadow color
                                        spreadRadius:
                                            5, // Set the spread radius
                                        blurRadius: 7, // Set the blur radius
                                        offset: Offset(
                                            0, 3), // Set the shadow offset
                                      ),
                                    ],
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width:
                                              40.0, // Set the width of the container
                                          height: 40.0,
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xFFAA0F22),
                                            radius: 50,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                      'Best'),
                                                  Text(
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                      'Seller')
                                                ]), // Replace with your desired icon
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            color: Color(
                                                0xFF200A0D), // Set the background color to red
                                            borderRadius: BorderRadius.circular(
                                                8.0), // Set the border radius
                                          ),
                                          child: Image.asset(
                                              'assets/Heart Angle.png'),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.009,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/camera.png'),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.009,
                                        ),
                                        Text(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            'IR Mini PT'),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.009,
                                        ),
                                        Text(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            'AED 00.00'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                          ],
                                        )
                                      ],
                                    )
                                  ]),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  margin: EdgeInsets.only(left: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        10), // Set the border radius
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(
                                            0.5), // Set the shadow color
                                        spreadRadius:
                                            5, // Set the spread radius
                                        blurRadius: 7, // Set the blur radius
                                        offset: Offset(
                                            0, 3), // Set the shadow offset
                                      ),
                                    ],
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width:
                                              40.0, // Set the width of the container
                                          height: 40.0,
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xFFAA0F22),
                                            radius: 50,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                      'Best'),
                                                  Text(
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                      'Seller')
                                                ]), // Replace with your desired icon
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            color: Color(
                                                0xFF200A0D), // Set the background color to red
                                            borderRadius: BorderRadius.circular(
                                                8.0), // Set the border radius
                                          ),
                                          child: Image.asset(
                                              'assets/Heart Angle.png'),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.009,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/camera.png'),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.009,
                                        ),
                                        Text(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            'IR Mini PT'),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.009,
                                        ),
                                        Text(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            'AED 00.00'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                          ],
                                        )
                                      ],
                                    )
                                  ]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.94,
                              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    25.0), // Add border radius
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
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.0),
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
                                    ]),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    padding: EdgeInsets.symmetric(),
                                    child: Column(children: [
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
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 20.0),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AddVoucher()),
                                          );
                                        },
                                        child: Row(children: [
                                          Image.asset('assets/promo.png'),
                                          SizedBox(width: 10.0),
                                          Text('Apply a Promo Code',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold))
                                        ]),
                                      ),
                                      Image.asset('assets/leftarrow (2).png'),
                                    ]),
                                Divider(
                                  thickness: 1,
                                  height: 35,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Your Total :',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                      Text('AED  1000.00',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5.0, right: 5.0, top: 20.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        _currentIndex = 3;
                                      });
                                      _pageController.jumpToPage(3);
                                      //    Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CheckoutStepper()),
                                      // );
                                    },
                                    style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(350, 50.0)),
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
                                    child: const Text('Confirm payment'),
                                  ),
                                )
                              ]),
                            )
                          ],
                        ),
                      );
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
                                                        'assets/Pen 2.png'),
                                                  ),
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderPlaced()),
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
                      onTap: onTap,
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
