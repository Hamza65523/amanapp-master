import 'package:amanapp/Setting.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
            'Search',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 40,),
             Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
                  child: TextField(
                   
                    decoration: InputDecoration(
                        hintText: 'IR Mini PT Dome',
                        suffixIcon: IconButton(
                            color: const Color(0xFF045a4f),
                            icon: Icon(
                                 Icons.search
                                ),
                            onPressed: () {
                             
                            }),
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
          
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Searches'),
                  Text('Clear searches',
                      style: TextStyle(color: Color(0xFFAA0F22)))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/time.png',
                        scale: 3.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Setting()),
                            );
                          },
                          child: Text('IR Mini PT Dome 1')),
                    ],
                  ),
                  Image.asset('assets/cross.png')
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/time.png',
                        scale: 3.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Text('IR Mini PT Dome 1'),
                    ],
                  ),
                  Image.asset('assets/cross.png')
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/time.png',
                        scale: 3.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Text('IR Mini PT Dome 1'),
                    ],
                  ),
                  Image.asset('assets/cross.png')
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/time.png',
                        scale: 3.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Text('IR Mini PT Dome 1'),
                    ],
                  ),
                  Image.asset('assets/cross.png')
                ],
              ),
            ),
          ],
        ));
  }
}
