import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors
              .transparent, // Set the background color of the app bar to transparent
          elevation: 0, // Remove the shadow below the app bar
          title: const Text(
            'Notifications',
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
             Padding(
             padding: const EdgeInsets.only(left: 12.0,right: 18.0),
             child: Divider(
                   height: 50,
                   thickness: 1,
                 ),
           ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Ellipse 13.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(children: [
                          Text('Order Confirmed'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.009,
                          ),
                          Text(
                            'IR Mini PT Dome',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Text(
                      '23 mins ago',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Ellipse 13.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(children: [
                          Text('Order Confirmed'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.009,
                          ),
                          Text(
                            'IR Mini PT Dome',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Text(
                      '23 mins ago',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Ellipse 13.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(children: [
                          Text('Order Confirmed'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.009,
                          ),
                          Text(
                            'IR Mini PT Dome',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Text(
                      '23 mins ago',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Ellipse 13.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(children: [
                          Text('Order Confirmed'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.009,
                          ),
                          Text(
                            'IR Mini PT Dome',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Text(
                      '23 mins ago',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ],
        ));
  }
}
