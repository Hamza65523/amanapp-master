import 'dart:async';

import 'package:amanapp/ProductDetail.dart';
import 'package:amanapp/configuration.dart';
import 'package:amanapp/savedaddressmap.dart';
import 'package:amanapp/timmer/homepage.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'bottomnvigationbar.dart';

class Map72 extends StatefulWidget {
  @override
  State<Map72> createState() => MMap72State();
}

class MMap72State extends State<Map72> {
  Completer<GoogleMapController> _controller = Completer();
  LatLng? _latLng = LatLng(28.6472799, 76.8130638);
  bool home = false;
  bool work = false;
  bool partner = false;
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.6289206, 77.2065322),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> getCurrentLocation() async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    _latLng = LatLng(_locationData.latitude!, _locationData.longitude!);
    print(_latLng);

    _kGooglePlex = CameraPosition(
      target: _latLng!,
      zoom: 14.4746,
    );

    await Future.delayed(const Duration(seconds: 1));
    final GoogleMapController controller = await _controller.future;
    setState(() {
      controller.animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));
    });
  }

  @override
  initState() {
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              markers: <Marker>{_setMarker()},
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.white,
                height: 380,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 360,
                                padding: EdgeInsets.symmetric(
                                  vertical: 20.0,
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Add a new address',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 16.0), // Add s

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset('assets/place.png'),
                                            SizedBox(width: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    'Old Mecca Al Moukarramah Rd,',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text('Al-Suhaifah',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(height: 3.0), // Add s
                                                Container(
                                                  width: 200,
                                                  child: Text('Jeddah',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey)),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SavedAddress()),
                                              );
                                            },
                                            child: Image.asset(
                                                'assets/pancel.png'))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 14.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border:
                                          OutlineInputBorder(), // Add border to the text field
                                      labelText: 'Street',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        16.0), // Add some spacing between text fields
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border:
                                          OutlineInputBorder(), // Add border to the text field
                                      labelText: 'Street number',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 14.0, right: 14.0, top: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(), // Add border to the text field
                                labelText: 'Area',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 14.0, right: 14.0, top: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(), // Add border to the text field
                                labelText: 'Enter your suburb',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 14.0, right: 14.0, top: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(), // Add border to the text field
                                labelText: 'Floor/Unit#',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 12.0, right: 14.0, top: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Delivery Instruction',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Give us more information about your address.',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 14.0, right: 14.0, top: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border:
                                    OutlineInputBorder(), // Add border to the text field
                                labelText: '(Optional) Note to Rider',
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Add a label',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            home = true;
                                            work = false;
                                            partner = false;
                                            setState(() {});
                                          },
                                          child: Container(
                                            width:
                                                65.0, // Adjust the size of the container
                                            height: 65.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(
                                                          0.5), // Shadow color
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  // offset: Offset(0,
                                                  //     3), // Offset to control the shadow position
                                                ),
                                              ],
                                            ),
                                            child: CircleAvatar(
                                              backgroundColor: home
                                                  ? Color(0xFFAA0F22)
                                                  : Colors.white,
                                              child: Image.asset(
                                                  'assets/house.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text('Home',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black)),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            home = false;
                                            work = true;
                                            partner = false;
                                            setState(() {});
                                          },
                                          child: Container(
                                            width:
                                                65.0, // Adjust the size of the container
                                            height: 65.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(
                                                          0.5), // Shadow color
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  // offset: Offset(0,
                                                  //     3), // Offset to control the shadow position
                                                ),
                                              ],
                                            ),
                                            child: CircleAvatar(
                                              backgroundColor: work
                                                  ? Color(0xFFAA0F22)
                                                  : Colors.white,
                                              child: Image.asset(
                                                  'assets/work.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text('Work',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.black)),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            home = false;
                                            work = false;
                                            partner = true;
                                            setState(() {});
                                          },
                                          child: Container(
                                            width:
                                                65.0, // Adjust the size of the container
                                            height: 65.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(
                                                          0.5), // Shadow color
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  // offset: Offset(0,
                                                  //     3), // Offset to control the shadow position
                                                ),
                                              ],
                                            ),
                                            child: CircleAvatar(
                                              backgroundColor: partner
                                                  ? Color(0xFFAA0F22)
                                                  : Colors.white,
                                              child: Image.asset(
                                                  'assets/heart.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text('Partner',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.black)),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                    Column(
                                      children: [
                                        Container(
                                          width:
                                              65.0, // Adjust the size of the container
                                          height: 65.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(
                                                    0.5), // Shadow color
                                                spreadRadius: 2,
                                                blurRadius: 5,
                                                // offset: Offset(0,
                                                //     3), // Offset to control the shadow position
                                              ),
                                            ],
                                          ),
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xFFAA0F22),
                                            child:
                                                Image.asset('assets/plus.png'),
                                          ),
                                        ),
                                        SizedBox(height: 8.0),
                                        Text('Other',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.black)),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 15.0,
                              left: 14.0,
                              right: 14.0,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomTabBar()),
                                );
                              },
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(
                                    const Size(double.infinity, 50)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xFFAA0F22)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              child: const Text('Save and Continue'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _setMarker() {
    return Marker(
      markerId: MarkerId("marker_1"),
      icon: BitmapDescriptor.defaultMarker,
      position: _latLng!,
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
