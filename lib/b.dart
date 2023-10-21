import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Picker'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pick a time'),
          onPressed: () {
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
          },
        ),
      ),
    );
  }
}
