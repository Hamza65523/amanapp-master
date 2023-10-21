import 'package:amanapp/Search.dart';
import 'package:amanapp/configuration.dart';
import 'package:amanapp/redux/reducer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeOrder extends StatefulWidget {
  const HomeOrder({super.key});

  @override
  State<HomeOrder> createState() => _HomeOrderState();
}

class _HomeOrderState extends State<HomeOrder> {
  TextEditingController controller = TextEditingController(text: "Search");
  // bool _isObscure2 = true;
  // double xOffset = 0;
  // double yOffset = 0;
  // double scaleFactor = 1;
  // //kiya nai dekha yr bhai
  // bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);
    final isObscure = store.state.isObscure;
    final xOffset = store.state.xOffset;
    final yOffset = store.state.yOffset;
    final scaleFactor = store.state.scaleFactor;
    final isDrawerOpen = store.state.isDrawerOpen;

    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return AnimatedContainer(
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor)
              ..rotateY(isDrawerOpen ? -0.5 : 0),
            duration: Duration(milliseconds: 250),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
            child: Scaffold(
                // bottomNavigationBar: BottomTabBar,
                appBar: AppBar(
                    actions: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: IconButton(
                          icon: Image.asset('assets/Filter2 (2).png'),
                          tooltip: 'Comment Icon',
                          onPressed: () {},
                        ),
                      ), //IconButton
                    ], //
                    centerTitle: true,
                    backgroundColor: Colors
                        .transparent, // Set the background color of the app bar to transparent
                    elevation: 0, // Remove the shadow below the app bar
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/locationsss.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Deliver to',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Text(
                                    'Sample address can be long or short, \n JLT, Dubai',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.92,
                              margin: EdgeInsets.all(10),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Search',
                                    suffixIcon: InkWell(
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) => Search()),
                                          // );s
                                        },
                                        child:
                                            Image.asset('assets/Filter2.png')),
                                    prefixIcon: IconButton(
                                        color: const Color(0xFF045a4f),
                                        icon: Icon(Icons.search),
                                        onPressed: () {}),
                                    // Set border for enabled state (default)
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3,
                                          color: Color.fromARGB(
                                              255, 188, 191, 188)),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/drow.png",
                                height: 150,
                                width: 330,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            columnhorizontal(
                                'assets/cameras.png', 'Network Cameras'),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.06),
                            columnhorizontal(
                                'assets/home3 (1).png', 'Network Cameras'),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.06),
                            columnhorizontal(
                                'assets/home3 (2).png', 'Network Cameras'),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  10), // Set the border radius
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Set the shadow color
                                  spreadRadius: 5, // Set the spread radius
                                  blurRadius: 7, // Set the blur radius
                                  offset: Offset(0, 3), // Set the shadow offset
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width:
                                        40.0, // Set the width of the container
                                    height: 40.0,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFAA0F22),
                                      radius: 50,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                                'Best'),
                                            Text(
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                                'Seller')
                                          ]), // Replace with your desired icon
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(
                                          0xFF200A0D), // Set the background color to red
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Set the border radius
                                    ),
                                    child:
                                        Image.asset('assets/Heart Angle.png'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/camera.png'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      'IR Mini PT'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      'AED 00.00'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                    ],
                                  )
                                ],
                              )
                            ]),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  10), // Set the border radius
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Set the shadow color
                                  spreadRadius: 5, // Set the spread radius
                                  blurRadius: 7, // Set the blur radius
                                  offset: Offset(0, 3), // Set the shadow offset
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width:
                                        40.0, // Set the width of the container
                                    height: 40.0,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFAA0F22),
                                      radius: 50,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                                'Best'),
                                            Text(
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                                'Seller')
                                          ]), // Replace with your desired icon
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(
                                          0xFF200A0D), // Set the background color to red
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Set the border radius
                                    ),
                                    child:
                                        Image.asset('assets/Heart Angle.png'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/camera.png'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      'IR Mini PT'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      'AED 00.00'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                    ],
                                  )
                                ],
                              )
                            ]),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  10), // Set the border radius
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Set the shadow color
                                  spreadRadius: 5, // Set the spread radius
                                  blurRadius: 7, // Set the blur radius
                                  offset: Offset(0, 3), // Set the shadow offset
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width:
                                        40.0, // Set the width of the container
                                    height: 40.0,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFAA0F22),
                                      radius: 50,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                                'Best'),
                                            Text(
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                                'Seller')
                                          ]), // Replace with your desired icon
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(
                                          0xFF200A0D), // Set the background color to red
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Set the border radius
                                    ),
                                    child:
                                        Image.asset('assets/Heart Angle.png'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/camera.png'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      'IR Mini PT'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      'AED 00.00'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                    ],
                                  )
                                ],
                              )
                            ]),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  10), // Set the border radius
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Set the shadow color
                                  spreadRadius: 5, // Set the spread radius
                                  blurRadius: 7, // Set the blur radius
                                  offset: Offset(0, 3), // Set the shadow offset
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width:
                                        40.0, // Set the width of the container
                                    height: 40.0,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFAA0F22),
                                      radius: 50,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                                'Best'),
                                            Text(
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                                'Seller')
                                          ]), // Replace with your desired icon
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: Color(
                                          0xFF200A0D), // Set the background color to red
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Set the border radius
                                    ),
                                    child:
                                        Image.asset('assets/Heart Angle.png'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/camera.png'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      'IR Mini PT'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.009,
                                  ),
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      'AED 00.00'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                      Icon(Icons.star, color: Colors.amber),
                                    ],
                                  )
                                ],
                              )
                            ]),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => CreatePassword()),
                            // );
                          },
                          style: ButtonStyle(
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
                            height: 60,
                            child: Text(
                              'View Your Cart',
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
                    ],
                  ),
                )),
          );
        });
  }

  Column columnhorizontal(String imagetittle, String tittle) {
    return Column(
      children: [
        Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Color(0xff200A0D),
                borderRadius: BorderRadius.circular(20)),
            // padding: EdgeInsets.all(12.0),
            child: Image.asset(imagetittle)),
        SizedBox(
          height: 3,
        ),
        Text(tittle,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold))
      ],
    );
  }
}
