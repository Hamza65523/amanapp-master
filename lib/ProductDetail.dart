// import 'package:amanapp/cart2.dart';
import 'package:amanapp/custom_stepper.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int _n = 0;
  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  void add() {
    setState(() {
      _n++;
    });
  }

  bool camera = true;
  bool lens = false;
  bool illuminator = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          leading: IconButton(
            icon: Image.asset('assets/left.png'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/ClipartKey_1200655 1.png'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                              '7-inch 2 MP 36X DarkFighter IR\nNetwork Positioning System',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          // SizedBox(
                          //   height: MediaQuery.of(context).size.height * 0.001,
                          // ),
                          // Text('Network Positioning System',
                          //     style: TextStyle(
                          //         fontSize: 14,
                          //         color: Colors.black,
                          //         fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 7.0),
                          decoration: BoxDecoration(
                              color: Color(0xFFAA0F22),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.2), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 5, // Blur radius
                                  offset: Offset(
                                      0, 2), // Offset in x and y directions
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset('assets/Heart Angle.png'))
                    ]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.018,
                ),
                Text('AED 30.00',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.018,
                ),
                Text('Details',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                    'Sed id semper risus in hendrerit gravida. Habitant morbi tristique senectus et netus. Sit amet nisl suscipit adipiscing bibendum est ultricies integer. ',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.003,
                ),
                Text('Read More',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[600],
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/12.png'),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Image.asset('assets/ROI-.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Image.asset('assets/Hddd.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Image.asset('assets/3D-DNR.png'),
                // Image.asset('assets/D-DNR32.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Image.asset('assets/IR-.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Image.asset('assets/SD-Card-.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Image.asset('assets/Privacy-Masking-.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Image.asset('assets/Scheduled-Task-.png'),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text('Specifications',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          Container(
            width: 360,
            padding: EdgeInsets.symmetric(vertical: 15.0),
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle the onPressed event here
                      camera = true;
                      lens = false;
                      illuminator = false;
                      setState(() {});
                    },
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(bottom: 13.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: camera ? Color(0xFFAA0F22) : Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Camera',
                        style: TextStyle(
                          color: camera ? Color(0xFFAA0F22) : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle the onPressed event here
                      camera = false;
                      lens = true;
                      illuminator = false;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.only(bottom: 13.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: lens ? Color(0xFFAA0F22) : Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Lens',
                        style: TextStyle(
                          color: lens ? Color(0xFFAA0F22) : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Handle the onPressed event here
                      camera = false;
                      lens = false;
                      illuminator = true;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.only(bottom: 13.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                illuminator ? Color(0xFFAA0F22) : Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Illuminator',
                        style: TextStyle(
                          color: illuminator ? Color(0xFFAA0F22) : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (camera == true)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  CameraCard(
                      'Image Sensor', '1/1.8" progressive scan CMOS', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Max. Resolution', '1920 × 1080', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard(
                      'Min. Illumination',
                      'Color: 0.005 Lux @ (F1.6, AGC ON), B/W: \n0.001 Lux @(F1.6, AGC ON)，0 Lux \nwith IR',
                      context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Shutter Speed', '1/1s~1/30000 s', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard(
                      'Day & Night', 'Day, Night, Auto, Schedule', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Zoom', '36 × optical, 16 × digital', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Slow Shutter', 'yes', context),
                ],
              ),
            )
          else if (lens == true)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  CameraCard(
                      'Image Sensor', '1/1.8" progressive scan CMOS', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Max. Resolution', '1920 × 1080', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard(
                      'Min. Illumination',
                      'Color: 0.005 Lux @ (F1.6, AGC ON), B/W: \n0.001 Lux @(F1.6, AGC ON)，0 Lux \nwith IR',
                      context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Shutter Speed', '1/1s~1/30000 s', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard(
                      'Day & Night', 'Day, Night, Auto, Schedule', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Zoom', '36 × optical, 16 × digital', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Slow Shutter', 'yes', context),
                ],
              ),
            )
          else if (illuminator == true)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  CameraCard(
                      'Image Sensor', '1/1.8" progressive scan CMOS', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Max. Resolution', '1920 × 1080', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard(
                      'Min. Illumination',
                      'Color: 0.005 Lux @ (F1.6, AGC ON), B/W: \n0.001 Lux @(F1.6, AGC ON)，0 Lux \nwith IR',
                      context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Shutter Speed', '1/1s~1/30000 s', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard(
                      'Day & Night', 'Day, Night, Auto, Schedule', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Zoom', '36 × optical, 16 × digital', context),
                  Divider(
                    thickness: 1,
                    height: 20.0,
                  ),
                  CameraCard('Slow Shutter', 'yes', context),
                ],
              ),
            ),
          Container(
            margin: EdgeInsets.only(
                left: 10.0, right: 10.0, bottom: 10.0, top: 30.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        child: new Center(
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: minus,
                                child: Container(
                                    child: Image.asset('assets/Vector1.png')),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              new Text('$_n',
                                  style: new TextStyle(fontSize: 18.0)),
                              SizedBox(
                                width: 10.0,
                              ),
                              InkWell(
                                onTap: add,
                                child: Container(
                                  child: Image.asset('assets/plussss.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: 8.0, vertical: 1.0),
                      //   decoration: BoxDecoration(
                      //       color: Color(0xff200A0D),
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.black
                      //               .withOpacity(0.2), // Shadow color
                      //           spreadRadius: 2, // Spread radius
                      //           blurRadius: 5, // Blur radius
                      //           offset: Offset(
                      //               0, 2), // Offset in x and y directions
                      //         ),
                      //       ],
                      //       borderRadius: BorderRadius.circular(5)),
                      //   child: Text('-',
                      //       style: TextStyle(
                      //         fontSize: 18,
                      //         color: Colors.white,
                      //       )),
                      // ),
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width * 0.04,
                      // ),
                      // Container(
                      //   child: Text('0'),
                      // ),
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width * 0.04,
                      // ),
                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: 8.0, vertical: 1.0),
                      //   decoration: BoxDecoration(
                      //       color: Color(0xff200A0D),
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.black
                      //               .withOpacity(0.2), // Shadow color
                      //           spreadRadius: 2, // Spread radius
                      //           blurRadius: 5, // Blur radius
                      //           offset: Offset(
                      //               0, 2), // Offset in x and y directions
                      //         ),
                      //       ],
                      //       borderRadius: BorderRadius.circular(5)),
                      //   child: Text('+',
                      //       style: TextStyle(
                      //         fontSize: 16,
                      //         color: Colors.white,
                      //       )),
                      // )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 5.0,
                      right: 5.0,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomSteppers()),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(
                            MediaQuery.of(context).size.width * 0.5, 45.0)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFAA0F22)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: const Text('Add to cart'),
                    ),
                  )
                ]),
          ),
        ])));
  }
}

CameraCard(title, subtitle, context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        width: 200,
        child: Text(
          subtitle,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      )
    ],
  );
}
