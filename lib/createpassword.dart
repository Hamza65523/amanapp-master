import 'dart:convert';
import 'package:amanapp/ChangeDelivery.dart';
import 'package:amanapp/Help.dart';
import 'package:amanapp/createyouraccount.dart';
import 'package:amanapp/login1zubair.dart';
import 'package:amanapp/loginscreen.dart';
import 'package:amanapp/map1.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreatePassword extends StatefulWidget {
  String? editprofiletoken;

  CreatePassword({this.editprofiletoken, super.key});

  @override
  // ignore: no_logic_in_create_state
  State<CreatePassword> createState() => _CreatePasswordState(editprofiletoken);
}

class _CreatePasswordState extends State<CreatePassword> {
  String? editprofiletoken;
  _CreatePasswordState(this.editprofiletoken);

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
  bool _isObscure3 = true;
  bool _isObscure2 = true;
  final pass1 = TextEditingController();
  final pass2 = TextEditingController();
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const SizedBox(
                //   height: 70,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 
                  ],
                ),

                const Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.26,

                    // fontStyle: FontStyle.italic,
                    // fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.26,

                    // fontStyle: FontStyle.italic,
                    // fontFamily: 'Times New Roman',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 10, right: 10),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            const Text('Password',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          obscureText: _isObscure,
                          // controller: pass1,
                          decoration: InputDecoration(
                             suffixIcon: IconButton(
                                  color: const Color(0xFF045a4f),
                                  icon: Icon(_isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  }),
                              //  IconButton(
                              //     color: const Color(0xFF045a4f),
                              //     icon:Image.asset('assets/Vector.png'),
                              //     onPressed: () {
                              //       setState(() {
                              //         _isObscure2 = !_isObscure2;
                              //       });
                              //     }),
                            //  InkWell(
                            //   onTap: (){
                                    
                            //         setState(() {
                            //           _isObscure3 = !_isObscure3;
                            //         });
                               
                            //   },
                            //    child: ImageIcon(
                            //       AssetImage("assets/Vector.png"),
                            //       color: Colors.black,
                                                        
                            //       size: 24,
                            //     ),
                            //  ),
                              hintText: 'New Password',
                              labelText: 'New Password',
                              // Set border for enabled state (default)
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 3,
                                  color: Color(0xFFDFE9E8),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              // Set border for focused state
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 3,
                                  color: Color(0xFFDFE9E8),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          validator: (inputValue) {
                            // inputValue=password;
                            if (inputValue!.isEmpty) {
                              return "Enter password";
                            } else if (inputValue.length < 8) {
                              return "Enter at least 8 letters";
                            }
                            // else if (pass1 != pass2)
                            // {
                            //   return "Password doesnt match";
                            // }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            const Text('Confirm Password',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ///////////////////////////////////////////////////////////////////////////////////////////////////////////
                        //////////////////////////////////////////////////////////////////////////////////////////////////////////
                        TextFormField(
                          obscureText: _isObscure2,
                          controller: pass2,
                          decoration: InputDecoration(
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
                              hintText: 'Re enter the new password',
                              labelText: 'Re enter the new password',
                              // Set border for enabled state (default)
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 3,
                                  color: Color(0xFFDFE9E8),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              // Set border for focused state
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 3,
                                  color: Color(0xFFDFE9E8),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          validator: (inputValue) {
                            // inputValue=confirmPassword;
                            if (inputValue!.isEmpty) {
                              return "Enter password";
                            } else if (inputValue.length < 8) {
                              return "Enter at least 8 letters";
                            } else if (pass1.text != pass2.text) {
                              print("This is Password: ${pass1.text}");
                              print("This is Password Confirm: ${pass2.text}");
                              print("Password doesnt match");
                              return "Password does not match";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.99,
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
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 300,
                              height: 60,
                              child: Text(
                                'Confirm',
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
