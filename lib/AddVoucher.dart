import 'package:amanapp/Referal.dart';
import 'package:flutter/material.dart';

class AddVoucher extends StatefulWidget {
  const AddVoucher({super.key});

  @override
  State<AddVoucher> createState() => _AddVoucherState();
}

class _AddVoucherState extends State<AddVoucher> {
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
            'Add Voucher/Promo',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                // key: _formkey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01),
                        const Text(
                          'Promo Code',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                        // controller: nameEdit,
                        decoration: InputDecoration(
                            hintText: 'Type code here',
                            labelText: 'Type code here',
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
                        validator: (inputValue) {
                          if (inputValue!.isEmpty) {
                            return "Enter Name";
                          }
                        }),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.width * 0.99,
                      // margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => Referal()),
                          // );
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
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
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFAA0F22),
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
