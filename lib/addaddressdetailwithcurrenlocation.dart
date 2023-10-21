import 'dart:async';

import 'package:amanapp/addadressmap2.dart';
import 'package:amanapp/configuration.dart';
import 'package:amanapp/savedaddressmap.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:location/location.dart';

class AddNewAddressCurrentMap extends StatefulWidget {
  @override
  State<AddNewAddressCurrentMap> createState() =>
      AddNewAddressCurrentMapState();
}

class AddNewAddressCurrentMapState extends State<AddNewAddressCurrentMap> {
  String? address;
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
  Future<String> getAddressFromLatLng(double latitude, double longitude) async {
    try {
      // Use the geocoding package to reverse geocode the coordinates
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);

      // Extract relevant address information
      Placemark placemark = placemarks[0];
      address =
          '${placemark.name}, ${placemark.locality}, ${placemark.administrativeArea}, ${placemark.country}';
      print('currentaddress:' + address.toString());
      setState(() {
        address;
      });
      return address!;
    } catch (e) {
      // Handle any errors that occur during the process
      print(e.toString());

      return 'Error getting address';
    }
  }

  // Future<void> getCurrentLocation() async {
  //   Location location = Location();

  //   bool _serviceEnabled;
  //   PermissionStatus _permissionGranted;
  //   LocationData _locationData;

  //   _serviceEnabled = await location.serviceEnabled();
  //   if (!_serviceEnabled) {
  //     _serviceEnabled = await location.requestService();
  //     if (!_serviceEnabled) {
  //       return;
  //     }
  //   }

  //   _permissionGranted = await location.hasPermission();
  //   if (_permissionGranted == PermissionStatus.denied) {
  //     _permissionGranted = await location.requestPermission();
  //     if (_permissionGranted != PermissionStatus.granted) {
  //       return;
  //     }
  //   }

  //   _locationData = await location.getLocation();

  //   _latLng = LatLng(_locationData.latitude!, _locationData.longitude!);
  //   print(_latLng);

  //   _kGooglePlex = CameraPosition(
  //     target: _latLng!,
  //     zoom: 14.4746,
  //   );

  //   await Future.delayed(const Duration(seconds: 1));
  //   final GoogleMapController controller = await _controller.future;
  //   setState(() {
  //     controller.animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));
  //   });
  // }

  @override
  initState() {
    super.initState();
    getmap();
  }

  getmap() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var lat = prefs.getDouble('lat');
    var long = prefs.getDouble('long');

    getAddressFromLatLng(lat!, long!);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                height: 190,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/place.png'),
                        Text(
                          'Old Mecca Al Moukarramah Rd,\nAl-Suhaifah',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SavedAddress()),
                              );
                            },
                            child: Image.asset('assets/Pen 2.png')),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 250),
                      child: Text(
                        'Jeddah',
                        style: TextStyle(),
                      ),
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
                            'Add Address Details',
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
