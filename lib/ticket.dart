import 'package:amanapp/Search.dart';
import 'package:amanapp/recent.dart';
import 'package:flutter/material.dart';

class MyTickets extends StatelessWidget {
  const MyTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppBar(
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
                  'My Tickets',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
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
                        0xFF049FB4),
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
                    Card(
                        context,
                        'Order ID: 156460',
                        'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                        'Estimated Delivery By: Tomorrow, 02:05 PM',
                        '2 Items',
                        'Pending',
                        0xFF049FB4),
                    SizedBox(height: 15.0),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Card(context, orderID, title, time, items, btnText, btnColor) {
  return Container(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Search()),
                  );
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
  );
}
