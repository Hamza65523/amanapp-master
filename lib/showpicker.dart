// main.dart
import 'package:flutter/cupertino.dart';



class ShowPciker extends StatefulWidget {
  const ShowPciker({Key? key}) : super(key: key);

  @override
  State<ShowPciker> createState() => _ShowPcikerState();
}

class _ShowPcikerState extends State<ShowPciker> {
  DateTime? _chosenDateTime;

  // Show the modal that contains the CupertinoDatePicker
  void _showDatePicker(ctx) {
    // showCupertinoModalPopup is a built-in function of the cupertino library
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 500,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    child: CupertinoDatePicker(
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                          setState(() {
                            _chosenDateTime = val;
                          });
                        }),
                  ),

                  // Close the modal
                  CupertinoButton(
                    child: const Text('OK'),
                    onPressed: () => Navigator.of(ctx).pop(),
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Kindacode.com'),
        // This button triggers the _showDatePicker function
        trailing: CupertinoButton(
          padding: EdgeInsetsDirectional.zero,
          child: const Text('Show Picker'),
          onPressed: () => _showDatePicker(context),
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Text(_chosenDateTime != null
              ? _chosenDateTime.toString()
              : 'No date time picked!'),
        ),
      ),
    );
  }
}