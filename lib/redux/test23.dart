// // counter_page.dart
// import 'package:amanapp/redux/reducer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:redux/redux.dart';

// class CounterPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Redux Counter')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             StoreConnector<CounterState, int>(
//               converter: (Store<CounterState> store) => store.state.count,
//               builder: (BuildContext context, int count) {
//                 return Text('Count: $count');
//               },
//             ),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 StoreConnector<CounterState, VoidCallback>(
//                   converter: (Store<CounterState> store) {
//                     return () => store.dispatch(IncrementAction());
//                   },
//                   builder: (BuildContext context, VoidCallback callback) {
//                     return ElevatedButton(
//                       onPressed: callback,
//                       child: Text('Increment'),
//                     );
//                   },
//                 ),
//                 SizedBox(width: 16),
//                 StoreConnector<CounterState, VoidCallback>(
//                   converter: (Store<CounterState> store) {
//                     return () => store.dispatch(DecrementAction());
//                   },
//                   builder: (BuildContext context, VoidCallback callback) {
//                     return ElevatedButton(
//                       onPressed: callback,
//                       child: Text('Decrement'),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
