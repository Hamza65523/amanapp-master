// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';



// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() {
//     return _MyHomePageState();
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController controller =
//       TextEditingController(text: "test");

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flutter Cupertino Search TextField Demo"),
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: CupertinoPageScaffold(
//         backgroundColor: Colors.grey[200],
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 20,),
//               Image.asset(
//                 "assets/logo.png",
//                 height: 300,
//                 width: 350,
//               ),
//               const SizedBox(height: 30,),
//               Padding(
//                 padding: const EdgeInsets.all(14.0),
//                 child: CupertinoSearchTextField(
//                   controller: controller,
//                   onChanged: (value) {},
//                   onSubmitted: (value) {},
//                   autocorrect: true,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
