import 'package:amanapp/Privacy.dart';
import 'package:flutter/material.dart';

class Term extends StatefulWidget {
  const Term({super.key});

  @override
  State<Term> createState() => _TermState();
}

class _TermState extends State<Term> {
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
            'Terms and Conditions',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Privacy()),
                    );
                    },
                    child: Text(
                      
                        style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500),
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    onTap: (){     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Privacy()),
                    );},
                    child: Text(
                        style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500),
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?'),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                      style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500),
                      'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. '),
                ],
              ),
            ),
          ),
        ));
  }
}
