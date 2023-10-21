// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:amanapp/createpassword.dart';
import 'package:amanapp/loginscreen.dart';
import 'package:amanapp/map1.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:international_phone_input/international_phone_input.dart';

// import 'login2zubair./dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  bool _isObscure2 = true;

  var pagechange = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: CircleAvatar(
      //     child:Icon(Icons.menu),
      //   ),
      // ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors
            .white, // Set the background color of the app bar to transparent
        elevation: 0, // Remove the shadow below the app bar
        leading: IconButton(
          icon: Image.asset('assets/whiteLeft.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 20.0, right: 10.0),
            child: Text(
              "Explorer As Guest",
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              // textDirection: TextDecoration.underline,
            ),
          )
        ],
        title: Text(
          'AMAN Pay',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                Center(
                  child: Container(
                    width: 170,
                    alignment: Alignment.center,
                    child: Image.asset('assets/Layer_1@2x.png'),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color.fromARGB(255, 9, 9, 9))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Select an option to continue",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color.fromARGB(255, 105, 104, 104))),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: ElevatedButton(
                        style: pagechange == true
                            ? ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    const Size(160.0, 40.0)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFAA0F22)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              )
                            : ButtonStyle(
                                side: MaterialStateProperty.all(
                                  BorderSide(
                                    color: Color(0xFFE6E4EA),
                                    width: 1.0,
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(160.0, 40.0)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                        onPressed: () {
                          pagechange = true;
                          setState(() {
                            // pagechange= !pagechange;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.50,
                          height: 60,
                          child: Text(
                            'Use Phone Number',
                            style: TextStyle(
                              fontSize: 13,
                              color: pagechange == true
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: pagechange == true
                                ? Color(0xFFAA0F22)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                      width: MediaQuery.of(context).size.width * 0.49,
                      child: ElevatedButton(
                        style: pagechange == false
                            ? ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    const Size(160.0, 40.0)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFAA0F22)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              )
                            : ButtonStyle(
                                side: MaterialStateProperty.all(
                                  BorderSide(
                                    color: Color(0xFFE6E4EA),
                                    width: 1.0,
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(160.0, 40.0)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                        onPressed: () {
                          pagechange = false;
                          setState(() {
                            // pagechange= !pagechange;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 60,
                          child: Text(
                            'Use Email',
                            style: TextStyle(
                              fontSize: 13,
                              color: pagechange == false
                                  ? Colors.white
                                  : Color.fromARGB(255, 11, 11, 11),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: pagechange == false
                                ? Color(0xFFAA0F22)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                pagechange == true
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Phone Number",
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                // padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.30,
                                height: 55,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.5, color: Color(0xFFE6E4EA)),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/Rectangle 30054.png"),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Text("+971",
                                          style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.all(10),
                                // padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.60,
                                height: 70,
                                // decoration: BoxDecoration(
                                //     border: Border.all(width: 1, color: Colors.black),
                                //     borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "11-XXXXXXX",
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
                                            width: 1.0,
                                            color: Color(0xFFE6E4EA)),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      // Set border for focused state
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            width: 3,
                                            color: Color.fromARGB(
                                                255, 188, 191, 188)),
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Email",
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 105, 104, 104))),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.92,
                            margin: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'username@yourmail.com',

                                  // Set border for enabled state (default)
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 188, 191, 188)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  // Set border for focused state
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 188, 191, 188)),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("Password",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 105, 104, 104))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: _isObscure2,
                    decoration: InputDecoration(
                        hintText: "********",
                        suffixIcon: IconButton(
                            color: const Color(0xFF045a4f),
                            icon: Icon(_isObscure2
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isObscure2 = !_isObscure2;
                              });
                            }),
                        // Set border for enabled state (default)
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.0, color: Color(0xFFE6E4EA)),
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Forget Password ? ',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffAA0F22),
                            decoration: TextDecoration.underline),
                        // textDirection: D,
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.01,
                // ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MapSample()),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(double.infinity, 50)),
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
                    child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 35,
                      child: Text(
                        'Login ',
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
                Container(
                  margin: EdgeInsets.only(top: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Need To Aman?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5178C4),
                        ),
                        // textDirection: D,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VerifyPhone()));
                            },
                            child: Text(
                              'Create Account ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5178C4),
                                  decoration: TextDecoration.underline),
                              // textDirection: D,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
