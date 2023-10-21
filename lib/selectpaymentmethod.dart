import 'package:amanapp/AddNewCard.dart';
import 'package:amanapp/orderplaced.dart';
import 'package:flutter/material.dart';

class SelectPaymentMethod extends StatefulWidget {
  const SelectPaymentMethod({super.key});

  @override
  State<SelectPaymentMethod> createState() => _SelectPaymentMethodState();
}

enum SingingCharacter { lafayette, jefferson }

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  bool isSwitched1 = false;
  bool isSwitched = false;
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
          'Select Payment Method',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              decoration: BoxDecoration(
                // color: Colors.blue,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/creditcard.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('AMAN Pay',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                Text('AED 00.00',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                        Text('+ Add Loyalty Points',
                            style: TextStyle(
                                color: Color(0xFFAA0F22),
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 35,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Use my credit for this order',
                              style: TextStyle(fontSize: 13)),
                          Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                          ),
                        ],
                      ))
                ],
              )),
          Container(
            padding: EdgeInsets.only(left: 14.0, right: 14.0),
            margin: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
            decoration: BoxDecoration(
              // color: Colors.blue,
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/paypal.png',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mastercard',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text('**** 0192',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/Visa.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Visa',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text('**** 0192',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/paypal.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mastercard',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text('**** 0192',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/Visa.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Visa',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text('**** 0192',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/cash.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Cash',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text('**** 0192',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddNewCard()),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/browncreditcard.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Credit or Debit Card',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                Row(children: [
                                  Image.asset(
                                    'assets/paypal.png',
                                    width: 22,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Image.asset(
                                    'assets/Visa.png',
                                    width: 18,
                                  ),
                                ])
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                width: 30,
                                child: Image.asset('assets/leftarrow (2).png')),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              top: 30.0,
            ),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const OrderPlaced()),
                Navigator.pop(context);
                // );
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width * 0.9, 45.0)),
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
        ]),
      ),
    );
  }
}
