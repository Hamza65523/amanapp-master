import 'package:amanapp/VerifyLink.dart';
import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
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
            'Name',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'This is how we’’ll address you',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        height: 35.0,
                        thickness: 1.0,
                      ),
                    ]),
              ),
              Column(children: [
                Container(
                  // margin: EdgeInsets.all(10),
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 70,
                  // decoration: BoxDecoration(
                  //     border: Border.all(width: 1, color: Colors.black),
                  //     borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Brian",
                        // suffixIcon: Align(
                        //   widthFactor: 1.0,
                        //   heightFactor: 1.0,
                        //   child: Icon(
                        //     size: 28,
                        //     Icons.calendar_month,
                        //   ),
                        // ),

                        // Set border for enabled state (default)
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 188, 191, 188)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // Set border for focused state
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 188, 191, 188)),
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     border: Border.all(
                //       color: const Color.fromARGB(255, 180, 176, 176),
                //       width: 1.0,
                //     ),
                //     borderRadius: BorderRadius.circular(15.0),
                //   ),
                //   margin: EdgeInsets.symmetric(horizontal: 20.0),
                //   padding: EdgeInsets.all(20.0),
                //   child: Text(
                //     'Brian',
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  // margin: EdgeInsets.all(10),
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 70,
                  // decoration: BoxDecoration(
                  //     border: Border.all(width: 1, color: Colors.black),
                  //     borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Williams",
                        // suffixIcon: Align(
                        //   widthFactor: 1.0,
                        //   heightFactor: 1.0,
                        //   child: Icon(
                        //     size: 28,
                        //     Icons.calendar_month,
                        //   ),
                        // ),

                        // Set border for enabled state (default)
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 188, 191, 188)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // Set border for focused state
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 188, 191, 188)),
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => VerifyLink(),
                    //     ));
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(const Size(350, 60.0)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFAA0F22)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text('Save'),
                ),
              )
            ]),
          ],
        ));
  }
}
