import 'package:amanapp/Cart5.dart';
import 'package:flutter/material.dart';

class horizontalStreeper extends StatefulWidget {
  const horizontalStreeper({Key? key}) : super(key: key);

  @override
  State<horizontalStreeper> createState() => _horizontalStreeperState();
}

class _horizontalStreeperState extends State<horizontalStreeper> {
  int currentStep = 0;
  continueStep() {
    if (currentStep < 4) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Row(
        children: [],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(
            // accentColor: Colors.red
            ),
        child: Stepper(
          elevation: 0, //Horizontal Impact
          // margin: const EdgeInsets.all(20), //vertical impact
          controlsBuilder: controlBuilders,
          type: StepperType.vertical,
          physics: const ScrollPhysics(),
          onStepTapped: onStepTapped,
          onStepContinue: continueStep,
          onStepCancel: cancelStep,
          currentStep: currentStep, //0, 1, 2
          steps: [
            Step(
              title: const Text('Order Placed'),
              content: Column(
                children: const [
                  // Text('This is the first step.'),
                ],
              ),
              isActive: currentStep >= 0,
            ),
            Step(
              title: const Text('Order Placed'),
              content: Column(
                children: const [
                  // Text('This is the first step.'),
                ],
              ),
              isActive: currentStep >= 0,
            ),
            Step(
                title: const Text('Preparing Order'),
                content: const Text(''),
                isActive: currentStep >= 0,
                state: StepState.disabled),
            Step(
                title: const Text('Delivery in Progress'),
                content: const Text(''),
                isActive: currentStep >= 0,
                state: StepState.disabled),
            Step(
              title: const Text('Delivered'),
              content: const Text(''),
              isActive: currentStep >= 0,
              state: StepState.disabled,
            ),
          ],
        ),
      ),
    );
  }
}
