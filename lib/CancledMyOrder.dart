import 'package:amanapp/ChangeDelivery.dart';
import 'package:amanapp/Help.dart';
import 'package:amanapp/Orders.dart';
import 'package:amanapp/changedeliveryaddress.dart';
import 'package:amanapp/custom_stepper.dart';
import 'package:amanapp/thanks.dart';
import 'package:amanapp/ticket.dart';
import 'package:flutter/material.dart';
import 'package:amanapp/changedeliveryaddress.dart';

class CancledMyOrder extends StatefulWidget {
  const CancledMyOrder({super.key});

  @override
  State<CancledMyOrder> createState() => _CancledMyOrderState();
}

enum SingingCharacter { lafayette, jefferson }

class _CancledMyOrderState extends State<CancledMyOrder> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  int? selectedRadio;
  int? selectedRadioTile;
  @override
  void initState() {
    super.initState();
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
              title: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Help()),
                  );
                },
                child: Text(
                  'Help',
                  style: TextStyle(color: Colors.black),
                ),
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
            child: Text('Can I cancel my order?',
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
                    'Tell us your reason for cancellation by choosing one of the options below.',
                    style: TextStyle(fontSize: 14)),
                SizedBox(height: 20.0),
                Text('You can cancel an order any time before it is accepted.',
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
            child: Text('Why do you want to cancel your order?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          // btn
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 9.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 30,
                    child: RadioListTile(
                      value: 1,
                      groupValue: selectedRadioTile,
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val!);
                      },
                      activeColor: Color(0xFFAA0F22),
                      selected: true,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  const Text('Wait longer than expected'),
                ]),
              ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 9.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 30,
                    child: RadioListTile(
                      value: 2,
                      groupValue: selectedRadioTile,
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val!);
                      },
                      activeColor: Color(0xFFAA0F22),
                      selected: true,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  const Text('I accidentally placed a pre-order'),
                ]),
              ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 9.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 30,
                    child: RadioListTile(
                      value: 3,
                      groupValue: selectedRadioTile,
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val!);
                      },
                      activeColor: Color(0xFFAA0F22),
                      selected: true,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  const Text('Promo code not applied'),
                ]),
              ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 9.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 30,
                    child: RadioListTile(
                      value: 4,
                      groupValue: selectedRadioTile,
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val!);
                      },
                      activeColor: Color(0xFFAA0F22),
                      selected: true,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  const Text('Changed my mind'),
                ]),
              ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 9.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 30,
                    child: RadioListTile(
                      value: 5,
                      groupValue: selectedRadioTile,
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val!);
                      },
                      activeColor: Color(0xFFAA0F22),
                      selected: true,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  const Text('Duplicate order'),
                ]),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Thanks(),
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
