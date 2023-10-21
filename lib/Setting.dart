import 'package:amanapp/AddNewCard.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isSwitched1 = false;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
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
            'Settings',
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
              Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 180, 176, 176),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Language',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddNewCard()),
                            );
                          },
                          child: Text(
                            'English',
                            style: TextStyle(
                                color: Color(0xFFAA0F22),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 180, 176, 176),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Receive push notifications',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
           
          
          ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 180, 176, 176),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Receive offers by email',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    Switch(
            value: isSwitched1,
            onChanged: (value) {
              setState(() {
                isSwitched1 = value;
                print(isSwitched1);
              });
            },
          
     
          ),
                    ],
                  ),
                ),
              ]),
              // Container(
              //   margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              //   child: ElevatedButton(
              //     onPressed: () {
              //       // Navigator.push(
              //       //     context,
              //       //     MaterialPageRoute(
              //       //       builder: (context) => Thanks(),
              //       //     ));
              //     },
              //     style: ButtonStyle(
              //       minimumSize:
              //           MaterialStateProperty.all(const Size(350, 60.0)),
              //       backgroundColor: MaterialStateProperty.all<Color>(
              //           const Color(0xFFAA0F22)),
              //       foregroundColor:
              //           MaterialStateProperty.all<Color>(Colors.white),
              //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //         RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(10.0),
              //         ),
              //       ),
              //     ),
              //     child: const Text('Save'),
              //   ),
              // )
            ]),
          ],
        ));
  }
}
