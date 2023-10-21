// main.dart
import 'package:amanapp/redux/test23.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// void main() {
//   final store = Store<CounterState>(
//     counterReducer,
//     initialState: CounterState(0),
//   );

//   runApp(MyApp(store: store));
// }

// class MyApp extends StatelessWidget {
//   final Store<CounterState> store;

//   MyApp({required this.store});

//   @override
//   Widget build(BuildContext context) {
//     return StoreProvider<CounterState>(
//       store: store,
//       child: MaterialApp(
//         title: 'Redux Example',
//         theme: ThemeData(primarySwatch: Colors.blue),
//         home: CounterPage(),
//       ),
//     );
//   }
// }

// class CounterState {
//   final int count;
//   CounterState(this.count);
// }
// class IncrementAction {}

// class DecrementAction {}

// // counter_reducer.dart
// CounterState counterReducer(CounterState state, dynamic action) {
//   if (action is IncrementAction) {
//     return CounterState(state.count + 1);
//   } else if (action is DecrementAction) {
//     return CounterState(state.count - 1);
//   }

//   return state;
// }

// class AppState {
//   final bool isObscure;
//   final double xOffset;
//   final double yOffset;
//   final double scaleFactor;
//   final bool isDrawerOpen;

//   AppState({
//     required this.isObscure,
//     required this.xOffset,
//     required this.yOffset,
//     required this.scaleFactor,
//     required this.isDrawerOpen,
//   });
// }

// class UpdatePositionAction {
//   final double xOffset;
//   final double yOffset;
//   final bool isObscure;
//   final bool isDrawerOpen;
//   final double scaleFactor;

//   UpdatePositionAction(this.xOffset, this.yOffset, this.isObscure,
//       this.isDrawerOpen, this.scaleFactor);
// }

// // app_reducer.dart
// AppState appReducer(AppState state, dynamic action) {
//   if (action is UpdatePositionAction) {
//     return AppState(
//       isObscure: action.isObscure,
//       xOffset: action.xOffset,
//       yOffset: action.yOffset,
//       scaleFactor: action.scaleFactor,
//       isDrawerOpen: action.isDrawerOpen,
//     );
//   }
//   return state;
// }
// Define the actions

class AppState {
  final bool isObscure;
  final double xOffset;
  final double yOffset;
  final double scaleFactor;
  final bool isDrawerOpen;

  AppState({
    required this.isObscure,
    required this.xOffset,
    required this.yOffset,
    required this.scaleFactor,
    required this.isDrawerOpen,
  });
}

class UpdatePositionAction {
  final bool isObscure;
  final double xOffset;
  final double yOffset;
  final double scaleFactor;
  final bool isDrawerOpen;

  UpdatePositionAction({
    required this.isObscure,
    required this.xOffset,
    required this.yOffset,
    required this.scaleFactor,
    required this.isDrawerOpen,
  });
}

// Define the reducer
AppState reducer(AppState state, dynamic action) {
  if (action is UpdatePositionAction) {
    return AppState(
      isObscure: action.isObscure,
      xOffset: action.xOffset,
      yOffset: action.yOffset,
      scaleFactor: action.scaleFactor,
      isDrawerOpen: action.isDrawerOpen,
    );
  }

  return state;
}
