import 'dart:convert';
import 'package:amanapp/createpassword.dart';
import 'package:amanapp/otp.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class CreateAccount extends StatefulWidget {
  String? editprofiletoken;

  CreateAccount({this.editprofiletoken, super.key});

  @override
  // ignore: no_logic_in_create_state
  State<CreateAccount> createState() => _CreateAccountState(editprofiletoken);
}

class _CreateAccountState extends State<CreateAccount> {
  String? editprofiletoken;
  _CreateAccountState(this.editprofiletoken);

  bool _isObscure = true;
  bool agree = false;
  bool Physics = false;
  bool Chemistry = false;
  bool Biology = false;
  bool Maths = false;
  bool isValidForm = false;

  final emailEdit = TextEditingController();
  final nameEdit = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool _isObscure2 = true;
  bool visible = false;

 TextEditingController dateinput = TextEditingController(); 

  String? password;
  String? confirmPassword;
  // This function is triggered when the button is clicked
  void _doSomething() {
    // Do something
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
       
      ),
      // appBar: AppBar(
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 20, right: 20),
      //     child: Image.asset(
      //       'images/elevatelogo.png',
      //       height: 230,
      //       width: 200,
      //     ),
      //   ),
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   actions: const [
      //      Padding(
      //       padding: EdgeInsets.only(right: 48, top: 16),
      //       child: Icon(
      //         Icons.menu,
      //         size: 40,
      //         color: Color(0xFF045a4f),
      //       ),
      //     ),
      //   ],
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
           
                const Text(
                  'Create Your ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.26,

                    // fontStyle: FontStyle.italic,
                    // fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.26,

                    // fontStyle: FontStyle.italic,
                    // fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //    const SizedBox(
                //       width: 15,
                //     ),
                //     Container(
                //         decoration: const BoxDecoration(
                //             border: Border(
                //                 bottom: BorderSide(
                //                     color: Color(0xff0b5e54), width: 4))),
                //         child: const Text(
                //           "My Profile",
                //           style: TextStyle(
                //             fontSize: 21,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ))
                //   ],
                // ),
                // Column(
                //   children: [
                //     SizedBox(width: 80,),
                //     AnimatedTextKit(
                //       animatedTexts: [
                //         TypewriterAnimatedText('Welcome Back',
                //             textStyle: const TextStyle(
                //               color: Colors.black,
                //               fontSize: 30,
                //               fontStyle: FontStyle.italic,
                //               fontFamily: 'Times New Roman',
                //               fontWeight: FontWeight.w500,
                //             ),
                //             speed: const Duration(
                //               milliseconds: 450,
                //             )),
                //       ],
                //       onTap: () {
                //         debugPrint("Welcome back!");
                //       },
                //       isRepeatingAnimation: true,
                //       totalRepeatCount: 2,
                //     ),
                //           AnimatedTextKit(
                //       animatedTexts: [
                //         TypewriterAnimatedText('login for Continue!',
                //             textStyle: const TextStyle(
                //               color: Colors.black,
                //               fontSize: 30,
                //               fontStyle: FontStyle.italic,
                //               fontFamily: 'Times New Roman',
                //               fontWeight: FontWeight.w500,
                //             ),
                //             speed: const Duration(
                //               milliseconds: 450,
                //             )),
                //       ],
                //       onTap: () {
                //         debugPrint("Welcome back!");
                //       },
                //       isRepeatingAnimation: true,
                //       totalRepeatCount: 2,
                //     ),
                //   ],
                // ),

                Container(
                  margin: const EdgeInsets.all(10),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            const Text(
                              'Your Full Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                            controller: nameEdit,
                            decoration: InputDecoration(
                                hintText: 'John Doe',
                                labelText: 'John Doe',
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
                            validator: (inputValue) {
                              if (inputValue!.isEmpty) {
                                return "Enter Name";
                              }
                            }),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            const Text('Email Address',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                            controller: emailEdit,
                            decoration: InputDecoration(
                                hintText: 'Your Email',
                                labelText: 'johndoe@gmail.com',
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
                            validator: (inputValue) {
                              if (inputValue!.isEmpty) {
                                return "Enter Email";
                              }
                            }),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            const Text('Date Of Birth',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
            //             TextField(
                        
            //     controller: dateinput, //editing controller of this TextField
            //     decoration: InputDecoration( 
            //        icon: Icon(Icons.calendar_today), //icon of text field
            //        labelText: "Enter Date" //label text of field
            //     ),
            //     readOnly: true,  //set it true, so that user will not able to edit text
            //     onTap: () async {
                
            //     },
            //  ),
                        TextFormField(
                           controller: dateinput,
                          onTap: ()async{
                              DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );
                  
                  if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                         dateinput.text = formattedDate; //set output date to TextField value. 
                      });
                  }else{
                      print("Date is not selected");
                  }
                          },
                           
                            decoration: InputDecoration(
                                suffixIcon: Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: Icon(
                                    size: 28,
                                    Icons.calendar_month,
                                  ),
                                ),
                                hintText: 'Date Of Birth',
                                labelText: 'DD.MM.YYYY',
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
                            validator: (inputValue) {
                              if (inputValue!.isEmpty) {
                                return "Enter Email";
                              }
                            }),

                       
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Container(
                    width: MediaQuery.of(context).size.width*0.99,
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                  
                                  onPressed: () {
                         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  CreatePassword()),
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
                          'Continue',
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
                                  // TextButton(
                                  //   onPressed: () {
                                  
                                  //   },
                                  //   child: Container(
                                  //     alignment: Alignment.center,
                                  //     width: 400,
                                  //     height: 60,
                                  //     child: Text(
                                  //       'Login ',
                                  //       style: TextStyle(
                                  //         fontSize: 18,
                                  //         color: Colors.white,
                                  //       ),
                                  //     ),
                                  //     decoration: BoxDecoration(
                                  //       color: const Color(0xFFAA0F22),
                                  //       borderRadius: BorderRadius.circular(13),
                                  //     ),
                                  //   ),
                                  // ),
                    ),
                  ), 
                        // TextButton(
                        //   onPressed: () {
                        //     Navigator.pushReplacement<void, void>(
                        //       context,
                        //       MaterialPageRoute<void>(
                        //         builder: (BuildContext context) =>
                        //             CreatePassword(),
                        //       ),
                        //     );
                        //   },
                        //   child: Container(
                        //     alignment: Alignment.center,
                        //     width: 400,
                        //     height: 60,
                        //     child: Text(
                        //       'Continue',
                        //       style: TextStyle(
                        //         fontSize: 18,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //     decoration: BoxDecoration(
                        //       color: const Color(0xFFAA0F22),
                        //       borderRadius: BorderRadius.circular(13),
                        //     ),
                        //   ),
                        // ),
                        //text,
                        //         //   // MyRoutes.signUp,
                        //         // );
                        //       }),
                        //       child: const Text(
                        //         'Sign Up here',
                        //         style: TextStyle(
                        //           color: Color(0xFF045a4f),
                        //           fontSize: 15,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        // ),
                      ],
                    ),
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
