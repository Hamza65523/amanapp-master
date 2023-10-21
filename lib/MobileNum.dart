import 'dart:math';

import 'package:amanapp/VerifyLink.dart';
import 'package:flutter/material.dart';

class MobileNum extends StatefulWidget {
  const MobileNum({super.key});

  @override
  State<MobileNum> createState() => _MobileNumState();
}

bool _isObscure2 = true;
final pass1 = TextEditingController();
final pass2 = TextEditingController();

class _MobileNumState extends State<MobileNum> {
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
            'Mobile Number',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'If you change to a new number, we’’ll take you through a verification process at checkout the next time you order',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ]),
              ),
              Column(children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      // padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                              width: 30, // Set the desired width
                              height: 30, // Set the desired height
                              fit: BoxFit.cover, //
                              "https://www.iconarchive.com/download/i109289/wikipedia/flags/SA-Saudi-Arabia-Flag.1024.png"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Text("+966",
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 105, 104, 104))),
                        ],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.all(10),
                      // padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 70,
                      // decoration: BoxDecoration(
                      //     border: Border.all(width: 1, color: Colors.black),
                      //     borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "+11 -1991919",
                            // suffixIcon: Align(
                            //   widthFactor: 1.0,
                            //   heightFactor: 1.0,
                            //   child: Icon(
                            //     size: 28,
                            //     Icons.calendar_month,
                            //   ),
                            // ),

                            // Set border for enabled state (default)
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(255, 188, 191, 188)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // Set border for focused state
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(255, 188, 191, 188)),
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => VerifyLink(),
                    //     ));
                                        Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(const Size(350, 60.0)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFAA0F22)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text('Saved'),
                ),
              )
            ]),
          ],
        ));
  }
}
