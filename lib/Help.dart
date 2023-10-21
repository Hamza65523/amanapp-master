import 'package:amanapp/Brian.dart';
import 'package:amanapp/CancledMyOrder.dart';
import 'package:amanapp/main.dart';
import 'package:flutter/material.dart';

import 'ChangeDelivery.dart';
import 'Orders.dart';
import 'bottomnvigationbar.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        AppBar(
          centerTitle: true,
          backgroundColor: Colors
              .transparent, // Set the background color of the app bar to transparent
          elevation: 0, // Remove the shadow below the app bar
          leading: IconButton(
            icon: Image.asset('assets/left.png'),
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BottomTabBar()),
              // );
            },
          ),
          title: Text(
            'Help',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How can we help you?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle the container press event here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangeDelivery()),
                    );
                  },
                  child: Container(
                    width: 360,
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Can I change my delivery address?',
                            style: TextStyle(fontSize: 16)),
                        Image.asset('assets/leftarrow (2).png')
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle the container press event here

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CancledMyOrder()),
                    );
                  },
                  child: Container(
                    width: 360,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Can I cancel my order?',
                            style: TextStyle(fontSize: 16)),
                        Image.asset('assets/leftarrow (2).png')
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle the container press event here

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Brian()),
                    );
                  },
                  child: Container(
                    width: 360,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Can I modify my order?',
                            style: TextStyle(fontSize: 16)),
                        Image.asset('assets/leftarrow (2).png')
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle the container press event here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Orders()),
                    );
                  },
                  child: Container(
                    width: 360,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: const BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Can I get priority delivery?',
                            style: TextStyle(fontSize: 16)),
                        Image.asset('assets/leftarrow (2).png')
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}

class ChangeDeliveryAddress extends StatelessWidget {
  const ChangeDeliveryAddress({super.key});
  @override
  Widget build(BuildContext context) {
    bool savedAddress = true;
    bool addNewAddress = false;
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors
                .transparent, // Set the background color of the app bar to transparent
            elevation: 0, // Remove the shadow below the app bar
            leading: IconButton(
              icon: Image.asset('assets/left.png'),
              onPressed: () {
                // Handle back button press
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Change Delivery Address',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Can I change my delivery address?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            width: 360,
            padding: EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,
                  child: Text(
                    'Please select an address where you would like your delivery.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 360,
            padding: EdgeInsets.symmetric(vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle the onPressed event here
                      savedAddress = true;
                      addNewAddress = false;
                    },
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(bottom: 13.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                savedAddress ? Color(0xFFAA0F22) : Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Saved Addresses',
                        style: TextStyle(
                          color:
                              savedAddress ? Color(0xFFAA0F22) : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle the onPressed event here
                      savedAddress = false;
                      addNewAddress = true;
                    },
                    child: Container(
                      padding: EdgeInsets.only(bottom: 13.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                addNewAddress ? Color(0xFFAA0F22) : Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Add New Address',
                        style: TextStyle(
                          color:
                              addNewAddress ? Color(0xFFAA0F22) : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (savedAddress == true)
            Column(
              children: [
                savedAddressFun(
                    'Work',
                    'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                    'assets/bag.png'),
                savedAddressFun(
                    'Home',
                    'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                    'assets/home.png'),
                savedAddressFun('', 'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                    'assets/place.png'),
                savedAddressFun('', 'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                    'assets/place.png'),
              ],
            )
          else if (addNewAddress == true)
            Column(children: [addNewAddressFun()])
        ],
      ),
    );
  }
}

savedAddressFun(String text, String subTitle, String iconData) {
  return Column(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(iconData),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (text != '')
                          Text(text,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        Container(
                          width: 200,
                          child: Text(subTitle,
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
                Image.asset('assets/pancel.png')
              ],
            ),
          ],
        ),
      )
    ],
  );
}

addNewAddressFun() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 14.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(), // Add border to the text field
                  labelText: 'Street',
                ),
              ),
            ),
            SizedBox(width: 16.0), // Add some spacing between text fields
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(), // Add border to the text field
                  labelText: 'Street number',
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(), // Add border to the text field
            labelText: 'Area',
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(), // Add border to the text field
            labelText: 'Enter your suburb',
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(), // Add border to the text field
            labelText: 'Floor/Unit#',
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 12.0, right: 14.0, top: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Delivery Instruction',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Give us more information about your address.',
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(), // Add border to the text field
            labelText: '(Optional) Note to Rider',
          ),
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
            // Button action or function
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
                const Size(double.infinity, 50)),
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFFAA0F22)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          child: const Text('Confirm'),
        ),
      )
    ],
  );
}
