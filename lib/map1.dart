import 'dart:async';

import 'package:amanapp/addadressmap2.dart';
import 'package:amanapp/addnewaddressmap.dart';
import 'package:amanapp/configuration.dart';
import 'package:amanapp/savedaddressmap.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'addaddressdetailwithcurrenlocation.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
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
    print('strings' + _locationData.latitude.toString());

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('lat', _locationData.latitude!);
    prefs.setDouble('long', _locationData.longitude!);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddNewAddressCurrentMap()),
    );
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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 239, 239,
              239), // Set the background color of the app bar to transparent
          elevation: 0, // Remove the shadow below the app bar
          leading: IconButton(
            icon: Image.asset('assets/whiteLeft.png'),
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
                height: 290,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment,
                        children: [
                          Image.asset('assets/place.png'),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'Is this your location?',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.33),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AddNewAddressMap()),
                                          );
                                        },
                                        child: Container(
                                          height: 80,
                                          padding: const EdgeInsets.all(20.0),
                                          child: CupertinoSearchTextField(
                                            controller: controller,
                                            onChanged: (value) {},
                                            onSubmitted: (value) {},
                                            autocorrect: true,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Image.asset('assets/place 1.png'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('Enter an Address to Continue'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          getCurrentLocation();
                                        },
                                        child: Text(
                                          'Use My Current Location',
                                          style: TextStyle(
                                              color: Color(0xffAA0F22),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.92,
                                        margin: EdgeInsets.all(10),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Map72()),
                                            );
                                          },
                                          style: ButtonStyle(
                                            minimumSize:
                                                MaterialStateProperty.all<Size>(
                                                    const Size(
                                                        double.infinity, 50)),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    const Color(0xFF808080)),
                                            foregroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
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
                                            width: 300,
                                            height: 35,
                                            child: Text(
                                              'Add Address Details ',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF808080),
                                              borderRadius:
                                                  BorderRadius.circular(13),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Image.asset('assets/Search.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60.0),
                      child: Text(
                        'Your precise location helps us serve you\nbetter',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.92,
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Map72()),
                          );
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(double.infinity, 50)),
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
                          width: 300,
                          height: 35,
                          child: Text(
                            'Add Address Details ',
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
