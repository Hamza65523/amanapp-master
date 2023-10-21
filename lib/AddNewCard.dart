import 'package:amanapp/AddVoucher.dart';
import 'package:flutter/material.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
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
            // Handle back button press
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Add New Card',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
              const Text(
                'Card Details',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "**** **** **** 2779",
                suffixIcon: IconButton(
                    color: const Color(0xFF045a4f),
                    icon: Image.asset('assets/Visa.png'),
                    onPressed: () {}),
                border: OutlineInputBorder(), // Add border to the text field
                labelText: '**** **** **** 2779',
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border:
                          OutlineInputBorder(), // Add border to the text field
                      labelText: 'Expiry Date (MM/YY)',
                    ),
                  ),
                ),
                SizedBox(width: 10.0), // Add some spacing between text fields
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border:
                          OutlineInputBorder(), // Add border to the text field
                      labelText: 'CVV',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(), // Add border to the text field
                labelText: 'Cardholder Name',
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1.0),
                child: Text(
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    'AED 1 will be charged to your card for verification purposes, '),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1.0),
                child: Text(
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    'the same will be refunded immediately.'),
              )
            ],
          ),
          SizedBox(height: 50.0),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            // margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => AddVoucher()),
                // );
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFAA0F22)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
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
            ),
          ),
        ],
      ),
    );
  }
}
