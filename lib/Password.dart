import 'dart:math';

import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

bool _isObscure2 = true;
bool _isObscure1 = true;
final pass1 = TextEditingController();
final pass2 = TextEditingController();

class _PasswordState extends State<Password> {
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
            'Password',
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
                        'Changing your password? Go for at least 6 characters',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        height: 35.0,
                        thickness: 1.0,
                      ),
                    ]),
              ),
              Column(children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    obscureText: _isObscure2,
                    controller: pass1,
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
                        hintText: 'Current password',
                        labelText: 'Current password',
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
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    obscureText: _isObscure1,
                    controller: pass2,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            color: const Color(0xFF045a4f),
                            icon: Icon(_isObscure1
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isObscure1 = !_isObscure1;
                              });
                            }),
                        hintText: 'New password',
                        labelText: 'New password',
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
                )
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
                    //       builder: (context) => Thanks(),
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
                  child: const Text('Change Password'),
                ),
              )
            ]),
          ],
        ));
  }
}
