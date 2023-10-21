import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors
              .transparent, // Set the background color of the app bar to transparent
          elevation: 0, // Remove the shadow below the app bar
          title: const Text(
            'Favorites',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            
           Padding(
             padding: const EdgeInsets.only(left: 12.0,right: 18.0),
             child: Divider(
                   height: 50,
                   thickness: 1,
                 ),
           ),
           SizedBox(
            height: 10.0,
           ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Set the border radius
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 40.0, // Set the width of the container
                              height: 40.0,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFAA0F22),
                                radius: 50,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                              child: Image.asset('assets/Heart Angle.png'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.009,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/camera.png'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
                                'IR Mini PT'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                    borderRadius:
                        BorderRadius.circular(10), // Set the border radius
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 40.0, // Set the width of the container
                              height: 40.0,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFAA0F22),
                                radius: 50,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                              child: Image.asset('assets/Heart Angle.png'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.009,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/camera.png'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
                                'IR Mini PT'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                    borderRadius:
                        BorderRadius.circular(10), // Set the border radius
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 40.0, // Set the width of the container
                              height: 40.0,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFAA0F22),
                                radius: 50,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                              child: Image.asset('assets/Heart Angle.png'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.009,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/camera.png'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
                                'IR Mini PT'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                    borderRadius:
                        BorderRadius.circular(10), // Set the border radius
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 40.0, // Set the width of the container
                              height: 40.0,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFAA0F22),
                                radius: 50,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                              child: Image.asset('assets/Heart Angle.png'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.009,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/camera.png'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
                                'IR Mini PT'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
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
            )
          ],
        ));
  }
}
