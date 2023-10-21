import 'package:amanapp/AddVoucher.dart';
import 'package:amanapp/checkout.dart';
import 'package:amanapp/cutominput.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Stepper Widget ",
          ),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Stepper(
              type: StepperType.horizontal,
              currentStep: currentStep,
              onStepCancel: () => currentStep == 0
                  ? null
                  : setState(() {
                      currentStep -= 1;
                    }),
              onStepContinue: () {
                bool isLastStep = (currentStep == getSteps().length - 1);
                if (isLastStep) {
                  //Do something with this information
                } else {
                  setState(() {
                    currentStep += 1;
                  });
                }
              },
              onStepTapped: (step) => setState(() {
                currentStep = step;
              }),
              steps: getSteps(),
            )),
      ),
    );
  }

  List<Step> getSteps() {
    return <Step>[
      Step(
        label: const Text("sdfsf"),
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: const Text(""),
        content: Column(
          children: const [
            // CustomInput(
            //   hint: "First Name",
            //   inputBorder: OutlineInputBorder(),
            // ),
            // CustomInput(
            //   hint: "Last Name",
            //   inputBorder: OutlineInputBorder(),
            // ),
          ],
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text("Cart"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.9,

                margin: EdgeInsets.symmetric(horizontal: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 2), // Offset in x and y directions
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/cart.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Standard Delivery',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text('Delivery time 24 hours',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Change',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFAA0F22),
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.04,
              ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.9,

                margin: EdgeInsets.symmetric(horizontal: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 2), // Offset in x and y directions
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/Trash Bin Trash.png'),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/Ellipse 16.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DS-2DE3A404IWG-E',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text('AED 00.00',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 1.0),
                          decoration: BoxDecoration(
                              color: Color(0xff200A0D),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.2), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 5, // Blur radius
                                  offset: Offset(
                                      0, 2), // Offset in x and y directions
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('-',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Container(
                          child: Text('03',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 1.0),
                          decoration: BoxDecoration(
                              color: Color(0xff200A0D),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.2), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 5, // Blur radius
                                  offset: Offset(
                                      0, 2), // Offset in x and y directions
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('+',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 15.0, bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Add more items',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFAA0F22),
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.09),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Popular Items',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(10), // Set the border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey
                              .withOpacity(0.5), // Set the shadow color
                          spreadRadius: 5, // Set the spread radius
                          blurRadius: 7, // Set the blur radius
                          offset: Offset(0, 3), // Set the shadow offset
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 40.0, // Set the width of the container
                            height: 40.0,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFAA0F22),
                              radius: 50,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                        'Best'),
                                    Text(
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                        'Seller')
                                  ]), // Replace with your desired icon
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Color(
                                  0xFF200A0D), // Set the background color to red
                              borderRadius: BorderRadius.circular(
                                  8.0), // Set the border radius
                            ),
                            child: Image.asset('assets/Heart Angle.png'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/camera.png'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.009,
                          ),
                          Text(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              'IR Mini PT'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.009,
                          ),
                          Text(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              'AED 00.00'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                            ],
                          )
                        ],
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(10), // Set the border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey
                              .withOpacity(0.5), // Set the shadow color
                          spreadRadius: 5, // Set the spread radius
                          blurRadius: 7, // Set the blur radius
                          offset: Offset(0, 3), // Set the shadow offset
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 40.0, // Set the width of the container
                            height: 40.0,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFAA0F22),
                              radius: 50,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                        'Best'),
                                    Text(
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                        'Seller')
                                  ]), // Replace with your desired icon
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Color(
                                  0xFF200A0D), // Set the background color to red
                              borderRadius: BorderRadius.circular(
                                  8.0), // Set the border radius
                            ),
                            child: Image.asset('assets/Heart Angle.png'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/camera.png'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.009,
                          ),
                          Text(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              'IR Mini PT'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.009,
                          ),
                          Text(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              'AED 00.00'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                            ],
                          )
                        ],
                      )
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.94,
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(25.0), // Add border radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 2), // Offset in x and y directions
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(children: [
                        Row(
                          children: [
                            Image.asset('assets/darkCard.png'),
                            SizedBox(width: 5.0),
                            Text('Order Summary',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2x DS-2DE3A404IWG-E',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2x DS-2DE3A404IWG-E',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ]),
                    ),
                    Divider(
                      thickness: 1,
                      height: 35,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2x DS-2DE3A404IWG-E',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('2x DS-2DE3A404IWG-E',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text('AED 00.00', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddVoucher()),
                            );
                          },
                          child: Row(children: [
                            Image.asset('assets/promo.png'),
                            SizedBox(width: 10.0),
                            Text('Apply a Promo Code',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold))
                          ]),
                        ),
                        Image.asset('assets/leftarrow (2).png'),
                      ]),
                  Divider(
                    thickness: 1,
                    height: 35,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your Total :',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        Text('AED  1000.00',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ]),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Checkout()),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(350, 50.0)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFAA0F22)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: const Text('Confirm payment'),
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: const Text("Checkout"),
        content: Column(
          children: const [
            CustomInput(
              hint: "Bio",
              inputBorder: OutlineInputBorder(),
            ),
          ],
        ),
      ),
    ];
  }
}
