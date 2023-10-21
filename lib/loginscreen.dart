import 'dart:convert';
import 'dart:core';

import 'package:amanapp/login1zubair.dart';
import 'package:amanapp/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int? response;
  bool _isObscure = true;
  bool visible = false;
  bool isValidForm = false;
  String? password;
  String? confirmpassword;
  String dropdownValue = 'English';
  // ignore: annotate_overrides
  void initState() {
    super.initState();
    // getStatus();
  }

  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool eng = true;
  bool arb = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Exit'),
              content: const Text('Are you sure you want to exit?'),
              actions: [
                TextButton(
                  onPressed: () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  },
                  child: const Text('Yes',
                      style: TextStyle(color: Color(0xFF045a4f))),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text(
                    'No',
                    style: TextStyle(color: Color(0xFF045a4f)),
                  ),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   title: Padding(
          //     padding: const EdgeInsets.only(top: 30, right: 20),
          //     child: Image.asset(
          //       'images/elevatelogo.png',
          //       height: 230,
          //       width: 200,
          //     ),
          //   ),
          //   centerTitle: true,
          //   elevation: 0,
          //   backgroundColor: Colors.white,
          //   // actions: [
          //   //   Padding(
          //   //     padding: const EdgeInsets.only(right: 48),
          //   //     child: Icon(
          //   //       Icons.menu,
          //   //       size: 40,
          //   //       color: const Color(0xFF045a4f),
          //   //     ),
          //   //   ),
          //   // ],
          // ),
          body: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return SafeArea(
                  child: GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Select your',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28.26,

                                  // fontStyle: FontStyle.italic,
                                  // fontFamily: 'Times New Roman',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                ' preferred Language',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28.26,
                                  // fontStyle: FontStyle.italic,
                                  // fontFamily: 'Times New Roman',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: const [
                                  Text(
                                    ' إختر حقك',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28.26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'اللغة المفضلة',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28.26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 110,
                              horizontal: 18,
                            ),
                            child: Form(
                              key: _formkey,
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      eng = true;
                                      arb = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.06,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: eng
                                                    ? Color(0xFFAA0F22)
                                                    : Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                          'English',
                                          style: TextStyle(
                                              color: eng
                                                  ? Color(0xFFAA0F22)
                                                  : Colors.black,
                                              fontSize: 22),
                                        ))),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      eng = false;
                                      arb = true;
                                      setState(() {});
                                    },
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.06,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: arb
                                                    ? Color(0xFFAA0F22)
                                                    : Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                          'Arabic',
                                          style: TextStyle(
                                              color: arb
                                                  ? Color(0xFFAA0F22)
                                                  : Colors.black,
                                              fontSize: 22),
                                        ))),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  //  Container(
                                  //   width: MediaQuery.of(context).size.width*0.9,
                                  //   padding: EdgeInsets.all(5),
                                  //   decoration: BoxDecoration(
                                  //     border: Border.all(),
                                  //     borderRadius: BorderRadius.circular(10)
                                  //   ),
                                  //    child: Center(
                                  //      child: DropdownButton<String>(
                                  //      // Step 3.
                                  //      value: dropdownValue,
                                  //      // Step 4.
                                  //      items: <String>['English', 'Arabic',]
                                  //          .map<DropdownMenuItem<String>>((String value) {
                                  //        return DropdownMenuItem<String>(
                                  //          value: value,
                                  //          child: Center(
                                  //            child: Text(
                                  //             textAlign: TextAlign.center,
                                  //              value,
                                  //              style: TextStyle(fontSize: 22),
                                  //            ),
                                  //          ),
                                  //        );
                                  //      }).toList(),
                                  //      // Step 5.
                                  //      onChanged: (String? newValue) {
                                  //        setState(() {
                                  //          dropdownValue = newValue!;
                                  //        });
                                  //      },
                                  //                                     ),
                                  //    ),
                                  //  ),

                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.09,
                                  ),

                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.92,
                                    margin: EdgeInsets.all(10),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen1()),
                                        );
                                      },
                                      style: ButtonStyle(
                                        minimumSize: MaterialStateProperty.all<
                                                Size>(
                                            const Size(double.infinity, 50)),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xFFAA0F22)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
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
                                        height: 60,
                                        child: Text(
                                          'Continue',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFAA0F22),
                                          borderRadius:
                                              BorderRadius.circular(13),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
