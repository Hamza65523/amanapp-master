// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:amanapp/login1zubair.dart';
import 'package:amanapp/loginscreen.dart';
import 'package:amanapp/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// import 'login2zubair.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({super.key});

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 247, 247),
   
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Container(
                            padding: EdgeInsets.only(top:20),
                         // padding: EdgeInsets.all(20),
                         width: 100,
                         child: CircleAvatar(
                           radius: 20,
                           backgroundColor: Color.fromARGB(255, 232, 230, 230),
                           child: IconButton(
                               iconSize: 18,
                                       icon: Icon(
                                         
                               Icons.arrow_back_ios_new_sharp,
                               color: Colors.black,
                             ),
                                       onPressed: () {
                                           Navigator.pop(context);
                                         // Handle back button press
                                       },
                                     ),
                         )),
                    Padding(
                      padding: const EdgeInsets.only(top:12,right: 18.0),
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
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                  Center(
                    child: Container(
                                width: 250,
                                alignment: Alignment.center,
                                child: Image.asset('assets/Layer_1@2x.png'),
                              ),
                  ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Verify Number",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color.fromARGB(255, 9, 9, 9))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text("Please enter your registered phone number to \ncontiune.",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color.fromARGB(255, 105, 104, 104))),
                ),
             
              
                SizedBox(
                  height: 30,
                ),
                    Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Phone Number",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 105, 104, 104))),
                ),
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
                           Image.asset("assets/Rectangle 30054.png"),
                          // Image.network("https://media.gettyimages.com/id/182820726/photo/pakistan-flag.jpg?s=612x612&w=gi&k=20&c=iHdCkldqhc3YXI31FBX04Tyvm1JZdWrU4bMtjD_L2tI="),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("+971",
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 105, 104, 104))),
                          ),
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
                        child:TextField(
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
                  ),),
                  ],
                ),
             
              
                SizedBox(height: 40,),
                 Container(
                    width: MediaQuery.of(context).size.width*0.92,
                    margin: EdgeInsets.all(13),
                    child: ElevatedButton(
                  
                                  onPressed: () {
                                    
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  OtpVerification()),
  );
                                  },
                                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                        const Size(double.infinity, 50)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xFFAA0F22)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                                  ),
                                  child:  Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 60,
                      child: Text(
                         'Send OTP',
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
                // TextButton(
                                     
                //                       onPressed: () {
                                      
                // Navigator.pushReplacement<void, void>(
                //               context,
                //               MaterialPageRoute<void>(
                //                 builder: (BuildContext context) =>
                                    
                //                   OtpVerification (),
                //               ),
                //             );
                                      
                //                       },
                //                       child: Container(
                //                         margin: EdgeInsets.only(left: 8),
                //                         alignment: Alignment.center,
                //                         width: MediaQuery.of(context).size.width*0.94,
                //                         height: 60,
                //                         child: Text(
                //                           'Send OTP',
                //                           style: TextStyle(
                //                             fontSize: 18,
                //                             color: Colors.white,
                //                           ),
                //                         ),
                //                         decoration: BoxDecoration(
                //                           color: const Color(0xFFAA0F22),
                //                           borderRadius: BorderRadius.circular(13),
                //                         ),
                //                       ),
                //                     ),
                                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
