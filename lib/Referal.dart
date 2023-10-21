import 'package:amanapp/Brian.dart';
import 'package:amanapp/RateOrder.dart';
import 'package:flutter/material.dart';

class Referal extends StatelessWidget {
  const Referal({super.key});

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
          'Referal',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(children: [
            Text(
              'Refer a friend',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'and Earn',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Image.asset('assets/gift.png'),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Image.asset('assets/1.png'),
                Text(
                  '100',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'Loyalty Points',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.0),
            Text(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
                'Sed id semper risus in hendrerit gravida. Habitant morbi tristique senectus et netus.')
          ]),
        ),
        SizedBox(height: 25.0),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RateOrder()),
                );
                  },
                  child: Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      'ABCD124'),
                ),
                SizedBox(width: 25.0),
                Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    'copy code'),
              ]),
        ),
        SizedBox(height: 25.0),
        Text(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            'Share your referral code via'),
        SizedBox(height: 25.0),
        Image.asset('assets/socialIcons.png')
      ]),
    );
  }
}
