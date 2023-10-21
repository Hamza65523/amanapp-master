import 'package:amanapp/Help.dart';
import 'package:amanapp/Orders.dart';
import 'package:amanapp/changedeliveryaddress.dart';
import 'package:amanapp/ticket.dart';
import 'package:flutter/material.dart';
import 'package:amanapp/changedeliveryaddress.dart';

class ChangeDelivery extends StatefulWidget {
  const ChangeDelivery({super.key});

  @override
  State<ChangeDelivery> createState() => _ChangeDeliveryState();
}

class _ChangeDeliveryState extends State<ChangeDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          AppBar(
              centerTitle: true,
              backgroundColor: Colors
                  .transparent, // Set the background color of the app bar to transparent
              elevation: 0, // Remove the shadow below the app bar
              leading: IconButton(
                icon: Image.asset('assets/Group 514229.png'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'Change Delivery Address',
                style: TextStyle(color: Colors.black),
              )),
          //  margin: EdgeInsets.symmetric(horizontal: 10.0),
          // padding: EdgeInsets.symmetric(
          //   vertical: 15.0,
          // ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          
          Container(
            width: 360,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            padding: EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Text('Can I change my delivery address?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 360,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            padding: EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    'Unfortunately you can only change your address with 8 hours remaining in delivery.',
                    style: TextStyle(fontSize: 14, color: Color((0xFFAA0F22)))),
                SizedBox(height: 20.0),
                Text(
                    'Please connect with our support team on the following channels to learn more.  ',
                    style: TextStyle(
                      fontSize: 14,
                    )),
              ],
            ),
          ),
          Container(
            width: 360,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            padding: EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Text('Contact Information',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),

          Container(
            width: 360,
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey, width: 1.0),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Send us a message', style: TextStyle(fontSize: 14)),
                      SizedBox(height: 5.0),
                      Text('You will be redirected to Whatsapp',
                          style: TextStyle(fontSize: 14, color: Colors.grey))
                    ],
                  ),
                  Image.asset('assets/Vector3.png')
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeDeliveryAddressed(),
                  ));
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(350, 60.0)),
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
        ]),
      ),
    );
  }
}
