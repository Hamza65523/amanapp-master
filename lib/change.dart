import 'dart:async';

// import 'package:amanapp/cart2.dart';
import 'package:amanapp/Cart5.dart';
import 'package:amanapp/cart2.dart';
import 'package:amanapp/checkout.dart';
import 'package:amanapp/configuration.dart';
import 'package:amanapp/custom_stepper.dart';
import 'package:amanapp/customstepper2.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter/cupertino.dart';

class CartScreen3 extends StatefulWidget {
  @override
  State<CartScreen3> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen3> {
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

  int? selectedRadio;
  int? selectedRadioTile;
  DateTime? _chosenDateTime;
  @override
  initState() {
    super.initState();
    // getCurrentLocation();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Cart2(),
            // GoogleMap(
            //   mapType: MapType.normal,
            //   initialCameraPosition: _kGooglePlex,
            //   markers: <Marker>{_setMarker()},
            //   myLocationButtonEnabled: true,
            //   myLocationEnabled: true,
            //   onMapCreated: (GoogleMapController controller) {
            //     _controller.complete(controller);
            //   },
            // ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.white,
                height: selectedRadioTile == 2 ? 380 : 280,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      padding: EdgeInsets.only(
                        right: 10.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey, // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.66,
                            // padding: EdgeInsets.only(
                            //     right: 10.0, top: 10.0, bottom: 10.0),

                            child: RadioListTile(
                              value: 1,
                              groupValue: selectedRadioTile,
                              title: Text("Schedule Delivery"),
                              subtitle: Text('Delivery time 24 hours'),
                              onChanged: (val) {
                                print("Radio Tile pressed $val");
                                setSelectedRadioTile(val!);
                              },
                              activeColor: Color(0xFFAA0F22),
                              selected: false,
                            ),
                          ),
                          Text(
                            '23 mins ago',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      padding: EdgeInsets.only(
                        right: 10.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey, // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                // padding: EdgeInsets.only(
                                //     right: 10.0, top: 10.0, bottom: 10.0),
                                child: RadioListTile(
                                  value: 2,
                                  groupValue: selectedRadioTile,
                                  title: Text("Schedule for later"),
                                  subtitle: Text('Schedule for later'),
                                  onChanged: (val) {
                                    print("Radio Tile pressed $val");
                                    setSelectedRadioTile(val!);
                                  },
                                  activeColor: Color(0xFFAA0F22),
                                  selected: false,
                                ),
                              ),
                              Text(
                                '23 mins ago',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          if (selectedRadioTile == 2)
                            Container(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: CupertinoDatePicker(
                                        initialDateTime: DateTime.now(),
                                        onDateTimeChanged: (val) {
                                          // setState(() {
                                          //   _chosenDateTime = val;
                                          // });
                                        }),
                                  ),
                                  // Close the modal
                                  // CupertinoButton(
                                  //   child: const Text('OK'),
                                  //   onPressed: () => Navigator.of(context).pop(),
                                  // )
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.width * 0.66,
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomSteppers2()),
                          );
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(double.infinity, 50)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF808080)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 35,
                          child: Text(
                            'Confirm date and time ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF808080),
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                  ],
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

// main.dart

// Show the modal that contains the CupertinoDatePicker
// void _showDatePicker(ctx) {
//   // showCupertinoModalPopup is a built-in function of the cupertino library
//   showCupertinoModalPopup(
//       context: ctx,
//       builder: (_) => Container(
//             height: 500,
//             color: const Color.fromARGB(255, 255, 255, 255),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 400,
//                   child: CupertinoDatePicker(
//                       initialDateTime: DateTime.now(),
//                       onDateTimeChanged: (val) {
//                         // setState(() {
//                         //   _chosenDateTime = val;
//                         // });
//                       }),
//                 ),

//                 // Close the modal
//                 CupertinoButton(
//                   child: const Text('OK'),
//                   onPressed: () => Navigator.of(ctx).pop(),
//                 )
//               ],
//             ),
//           ));
// }
