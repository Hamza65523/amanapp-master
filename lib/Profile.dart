import 'package:amanapp/Email.dart';
import 'package:amanapp/MobileNum.dart';
import 'package:amanapp/Name.dart';
import 'package:amanapp/Password.dart';
import 'package:amanapp/VerifyLink.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          'Profile',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Personal Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 35.0,
              thickness: 1.0,
            ),
          ]),
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 180, 176, 176),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name'),
                        InkWell(
                            onTap: () {
                              // bhai 5 mint coding karlo bhai
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Name(),
                                  ));
                              // yahan navigation wali line dalo or usko name wale page ke sath connect kro
                            },
                            child: Image.asset('assets/pancel.png'))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text('Brian Williams',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 180, 176, 176),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 10.0, top: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Email'),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Email(),
                                  ));
                            },
                            child: Image.asset('assets/pancel.png'))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text('brian.williams@gmail.com',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerifyLink(),
                            ));
                      },
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(40, 30.0)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFAA0F22)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: const Text('Verify Email'),
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 180, 176, 176),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Password'),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Password(),
                                  ));
                            },
                            child: Image.asset('assets/pancel.png'))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text('*********',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 180, 176, 176),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Mobile number'),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MobileNum(),
                                  ));
                            },
                            child: Image.asset('assets/pancel.png'))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text('+966-11-XXXXXXX',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MobileNum(),
                              ));
                        },
                        // hn me krta ho lekan yeh bata ke uska button banaya hain yaha nai
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(40, 30.0)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF9C9C9C)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: Row(children: [
                          Image.asset('assets/whiteTick.png'),
                          SizedBox(width: 6),
                          const Text('Verifed')
                        ]),
                      ),
                    ),
                  ]),
            )
          ],
        )
      ]),
    );
  }
}
// module side me on kro wah se link karte jaty hain sab
