import 'dart:async';

// import 'package:amanapp/cart2.dart';
import 'package:amanapp/Cart5.dart';
import 'package:amanapp/OrderDetails.dart';
import 'package:amanapp/bottomnvigationbar.dart';
import 'package:amanapp/cart2.dart';
import 'package:amanapp/checkout.dart';
import 'package:amanapp/configuration.dart';
import 'package:amanapp/custom_stepper.dart';
import 'package:amanapp/customstepper2.dart';
import 'package:amanapp/timmer/homepage.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter/cupertino.dart';

class ReorderDertails extends StatefulWidget {
  @override
  State<ReorderDertails> createState() => ReorderDertailsState();
}

class ReorderDertailsState extends State<ReorderDertails> {
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

  bool isChecked = false;
  bool isChecked1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            OrderDetails()
            // Cart2(),
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
            ,
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
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(children: [
                        Row(
                          children: [
                            SizedBox(width: 5.0),
                            Text('Select Items',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                Text('2x DS-2DE3A404IWG-E',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked1,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked1 = value!;
                                    });
                                  },
                                ),
                                Text('2x DS-2DE3A404IWG-E',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ]),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      // margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomSteppers()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
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
                          height: 60,
                          child: Text(
                            'Add to cart',
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
                                builder: (context) => BottomTabBar()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFAA0F22)),
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
                          height: 60,
                          child: Text(
                            'Back to Home',
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
