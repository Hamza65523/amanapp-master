import 'package:amanapp/Favourite.dart';
import 'package:amanapp/Help.dart';
import 'package:amanapp/OrderRecording.dart';
import 'package:amanapp/Orders.dart';
import 'package:amanapp/Profile.dart';
import 'package:amanapp/Referal.dart';
import 'package:amanapp/Setting.dart';
import 'package:amanapp/Term.dart';
import 'package:amanapp/savedaddressmap.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(
      color: const Color.fromARGB(255, 233, 213, 213),
      blurRadius: 30,
      offset: const Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'images/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'images/horse.png'}
];

List<Map> drawerItems = [
  {
    'icon': 'assets/multiTicks.png',
    'title': 'Orders & Reordering',
    'path': OrderRecording()
  },
  {'icon': 'assets/person.png', 'title': 'Profile', 'path': Profile()},
  {'icon': 'assets/tickperson.png', 'title': 'Refer Friend', 'path': Referal()},
  {'icon': 'assets/Subtract.png', 'title': 'Favourites', 'path': Favourite()},
  {
    'icon': 'assets/location.png',
    'title': 'Saved Addresses',
    'path': SavedAddress()
  },
  {'icon': 'assets/setting.png', 'title': 'Settings', 'path': Setting()},
  {'icon': 'assets/quwstionmark.png', 'title': 'Help Center', 'path': Help()},
  {'icon': 'assets/questions.png', 'title': 'About app', 'path': Term()},
];
