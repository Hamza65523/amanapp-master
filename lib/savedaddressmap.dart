import 'package:amanapp/addadressmap2.dart';
import 'package:amanapp/login1zubair.dart';
import 'package:flutter/material.dart';

class SavedAddress extends StatefulWidget {
  const SavedAddress({super.key});

  @override
  State<SavedAddress> createState() => _SavedAddressState();
}

class _SavedAddressState extends State<SavedAddress> {
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
            'Saved Addresses',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            savedAddressFun('Work', 'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                'assets/bag.png',context),
            savedAddressFun('Home', 'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                'assets/home.png',context),
            savedAddressFun('', 'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                'assets/place.png',context),
            savedAddressFun('', 'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                'assets/place.png',context),
            savedAddressFun('', 'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                'assets/place.png',context),
            savedAddressFun('', 'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                'assets/place.png',context),
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: ElevatedButton(
                onPressed: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  Map72()),
                      );
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                      const Size(double.infinity, 50)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFAA0F22)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text('Add New Address'),
              ),
            ),
          ],
        ));
  }
}

savedAddressFun(String text, String subTitle, String iconData,BuildContext context) {
  return Column(
    children: [
      Container(
        width: 360,
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
        ),
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(iconData),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (text != '')
                          Text(text,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        Container(
                          width: 200,
                          child: Text(subTitle,
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
                InkWell(
                  onTap: (){
                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Map72()),
            );
                  },
                  child: Image.asset('assets/pancel.png'))
              ],
            ),
          ],
        ),
      )
    ],
  );
}
