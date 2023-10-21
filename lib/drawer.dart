import 'package:amanapp/Aman.dart';
import 'package:amanapp/Profile.dart';
import 'package:amanapp/configuration.dart';
import 'package:amanapp/loginscreen.dart';
import 'package:amanapp/main.dart';
import 'package:amanapp/redux/reducer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  bool _isObscure2 = true;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  //kiya nai dekha yr bhai
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF200A0D),
      padding: EdgeInsets.only(top: 50, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 150,
                      // alignment: Alignment.center,
                      child: Image.asset('assets/AE AMAN.png'),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  // setState(() {
                  //   xOffset = 0;
                  //   yOffset = 0;
                  //   scaleFactor = 1;
                  //   isDrawerOpen = false;
                  // });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                  StoreProvider.of<AppState>(context).dispatch(
                    UpdatePositionAction(
                      isObscure: false,
                      xOffset: 0,
                      yOffset: 0,
                      scaleFactor: 1,
                      isDrawerOpen: false,
                    ),
                  );
                  setState(() {});
                },
                child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Image.asset('assets/crossBtn.png')),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(right: 50),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 1,
                        height: 4.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AmanPay()),
                                  );
                                },
                                child: Text(
                                  'AMAN Pay',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: 20,
                                // margin: EdgeInsets.all(10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xFF76C4EA)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => CreatePassword()),
                                    // );
                                  },
                                  child: Text(
                                    'AED 00.00',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Credit and payment methods',
                            style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.white,
                        height: 4.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset(element['icon']),
                          SizedBox(
                            width: 10,
                          ),
                          Text(element['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      ),
                    ))
                .toList(),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 20, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/Logout.png'),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        //       Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => LoginScreen()),
                        // );
                      },
                      child: Text(
                        'Sign out',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
