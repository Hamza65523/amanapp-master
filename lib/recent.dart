import 'package:flutter/material.dart';

class RecentActivity extends StatefulWidget {
  const RecentActivity({super.key});

  @override
  State<RecentActivity> createState() => _RecentActivityState();
}

class _RecentActivityState extends State<RecentActivity> {
  bool allView = true;
  bool orders = false;
  bool refunds = false;
  bool topups = false;
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
            'Recent Activities',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Button action or function
                  allView = true;
                  orders = false;
                  refunds = false;
                  topups = false;
                  setState(() {});
                },
                style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(30, 30)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      allView ? Color(0xFFAA0F22) : Color(0xFFDEE8F1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      allView ? Colors.white : Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const Text('All'),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              ElevatedButton(
                onPressed: () {
                  // Button action or function
                  allView = false;
                  orders = true;
                  refunds = false;
                  topups = false;
                  setState(() {});
                },
                style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(30, 30)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      orders ? Color(0xFFAA0F22) : Color(0xFFDEE8F1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      orders ? Colors.white : Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const Text('Orders'),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              ElevatedButton(
                onPressed: () {
                  // Button action or function
                  allView = false;
                  orders = false;
                  refunds = true;
                  topups = false;
                  setState(() {});
                },
                style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(30, 30)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      refunds ? Color(0xFFAA0F22) : Color(0xFFDEE8F1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      refunds ? Colors.white : Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const Text('Refunds'),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              ElevatedButton(
                onPressed: () {
                  // Button action or function
                  allView = false;
                  orders = false;
                  refunds = false;
                  topups = true;
                  setState(() {});
                },
                style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(30, 30)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      topups ? Color(0xFFAA0F22) : Color(0xFFDEE8F1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      topups ? Colors.white : Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const Text('Top ups'),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          if (allView == true)
            Column(
              children: [
                Card(
                    context,
                    'Order ID: 156460',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF200A0D,
                    'assets/bar.png'),
                Card(
                    context,
                    'Order ID: 156460',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF39970D,
                    'assets/card.png'),
                Card(
                    context,
                    'Order ID: 156460',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF200A0D,
                    'assets/card.png'),
                Card(
                    context,
                    'Order ID: 156460',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF200A0D,
                    'assets/card.png'),
              ],
            )
          else if (orders == true)
            Column(
              children: [
                Card(
                    context,
                    'Order ID: 156460',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF39970D,
                    'assets/bar.png'),
                Card(
                    context,
                    'Order ID: 156460',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF39970D,
                    'assets/card.png'),
                Card(
                    context,
                    'Order ID: 156460',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF39970D,
                    'assets/card.png'),
              ],
            )
          else if (refunds == true)
            Column(
              children: [
                Card(
                    context,
                    'Order ID: 156460',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF39970D,
                    'assets/bar.png'),
              ],
            )
          else if (topups == true)
            Column(
              children: [
                Card(
                    context,
                    'Order test',
                    'Estimated Delivery By: Tomorrow, 02:05 PM',
                    '2 Items',
                    '- AED 00.00',
                    '- AED 00.ssd',
                    0xFF39970D,
                    'assets/bar.png'),
              ],
            )
        ]));
  }
}

Card(context, orderID, title, time, items, btnText, btnColor, img) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.95,
    padding: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0), // Add border radius
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    img,
                    scale: 0.8,
                  ),
                  SizedBox(width: 10.0),
                  Text(orderID,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
              Text(btnText,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(btnColor))),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 5.0),
            Text(title, style: TextStyle(fontSize: 12)),
            SizedBox(height: 5.0),
            Text(time, style: TextStyle(fontSize: 12)),
            SizedBox(height: 5.0),
          ]),
        ),
        SizedBox(height: 10.0),
        Divider(
          height: 2.0,
          color: Colors.grey,
        )
      ],
    ),
  );
}
