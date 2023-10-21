// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:amanapp/createyouraccount.dart';
// import 'package:amanapp/login2zubair.dart';
import 'package:amanapp/verifyphonezubair.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<OtpVerification> {
  bool _isObscure = true;

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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Center(
                  child: Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Image.asset('assets/Layer_1@2x.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 130, left: 5, right: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'OTP',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.26,
                          // fontStyle: FontStyle.italic,
                          // fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      // Text(
                      //   'Cancel',
                      //   style: TextStyle(
                      //     fontSize: 15,
                      //     color: Color(0xFF045a4f),
                      //   ),
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Text(
                      'Enter the One Time Password you have received on your\nphone to login.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xffA5AABB),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 45,
                    horizontal: 32,
                  ),
                  child: Column(
                    children: [
                      // Note: Same code is applied for the TextFormField as well
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Otp(),
                          Otp(),
                          Otp(),
                          Otp(),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          // SizedBox(
                          //   width: 40,
                          // ),
                          Text(
                            'Resend OTP in 00:55',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffAA0F22),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),

                      //  SizedBox(height: MediaQuery.of(context).size.height*0.2,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.99,
                        // margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccount()),
                            );
                          },
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(double.infinity, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFAA0F22)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
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

  Widget _textFieldOTP({bool? first, last}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 85,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            // maxLength: 1,
            decoration: InputDecoration(
              // counter: Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.purple),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ),
    );
  }
}

class Otp extends StatelessWidget {
  const Otp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: const InputDecoration(
          hintText: ('-'),
        ),
        onSaved: (value) {},
      ),
    );
  }
}
