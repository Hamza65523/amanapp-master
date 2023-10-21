import 'package:amanapp/Brian.dart';
import 'package:amanapp/changedeliveryaddress.dart';
import 'package:flutter/material.dart';

import 'OrderDetails.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  bool UpcomingOrders = false;
  // var pagechange = true;
  bool PastOrders = true;
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
        title: Text(
          'Problem with Your Order?',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: 360,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Handle the onPressed event here
                        UpcomingOrders = true;
                        PastOrders = false;
                        setState(() {});
                      },
                      child: Container(
                        width: 200,
                        padding: EdgeInsets.only(bottom: 13.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: UpcomingOrders
                                  ? Color(0xFFAA0F22)
                                  : Colors.grey,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: Text(
                          'Upcoming Orders',
                          style: TextStyle(
                            color: UpcomingOrders
                                ? Color(0xFFAA0F22)
                                : Colors.black,
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
                        UpcomingOrders = false;
                        PastOrders = true;
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: 13.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color:
                                  PastOrders ? Color(0xFFAA0F22) : Colors.grey,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: Text(
                          'Past Orders',
                          style: TextStyle(
                            color:
                                PastOrders ? Color(0xFFAA0F22) : Colors.black,
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
            if (UpcomingOrders == true)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Card(
                          context,
                          'Order ID: 156460',
                          'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                          'Estimated Delivery By: Tomorrow, 02:05 PM',
                          '2 Items',
                          'On the Way',
                          0xFFAA0F22),
                      SizedBox(height: 10.0),
                      Card(
                          context,
                          'Order ID: 156460',
                          'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                          'Estimated Delivery By: Tomorrow, 02:05 PM',
                          '2 Items',
                          'Pending',
                          0xFF200A0D),
                      SizedBox(height: 10.0),
                      Card(
                          context,
                          'Order ID: 156460',
                          'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                          'Estimated Delivery By: Tomorrow, 02:05 PM',
                          '2 Items',
                          'Pending',
                          0xFF200A0D),
                      SizedBox(height: 10.0),
                      Card(
                          context,
                          'Order ID: 156460',
                          'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                          'Estimated Delivery By: Tomorrow, 02:05 PM',
                          '2 Items',
                          'Pending',
                          0xFF200A0D),
                      SizedBox(height: 15.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Brian()),
                          );
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(300, 60)),
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
                        child: const Text('Submit'),
                      ),
                    ],
                  )
                ],
              )
            else if (PastOrders == true)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Card(
                          context,
                          'Order ID: 156460',
                          'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                          'Estimated Delivery By: Tomorrow, 02:05 PM',
                          '2 Items',
                          'Delivered',
                          0xFFAA0F22),
                      SizedBox(height: 10.0),
                      Card(
                          context,
                          'Order ID: 156460',
                          'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                          'Estimated Delivery By: Tomorrow, 02:05 PM',
                          '2 Items',
                          'Cancelled',
                          0xFFACACAC),
                      SizedBox(height: 10.0),
                      Card(
                          context,
                          'Order ID: 156460',
                          'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                          'Estimated Delivery By: Tomorrow, 02:05 PM',
                          '2 Items',
                          'Delivered',
                          0xFFAA0F22),
                      SizedBox(height: 10.0),
                      Card(
                          context,
                          'Order ID: 156460',
                          'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                          'Estimated Delivery By: Tomorrow, 02:05 PM',
                          '2 Items',
                          'Cancelled',
                          0xFFACACAC),
                      SizedBox(height: 15.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Brian()),
                          );
                        },
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(300, 60)),
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
                        child: const Text('Submit'),
                      ),
                    ],
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}

Card(context, orderID, title, time, items, btnText, btnColor) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OrderDetails()),
      );
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), // Add border radius
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(orderID,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                width: MediaQuery.of(context).size.width * 0.30,
                child: ElevatedButton(
                  onPressed: () {
                    // Button action or function
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(btnColor)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  child: Text(btnText),
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Image.asset('assets/Vector2.png'),
              SizedBox(width: 5.0),
              Text(title, style: TextStyle(fontSize: 13)),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(time, style: TextStyle(fontSize: 12)),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(items, style: TextStyle(fontSize: 12)),
            ],
          ),
          SizedBox(height: 5.0),
        ],
      ),
    ),
  );
}
