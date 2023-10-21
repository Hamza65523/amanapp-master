import 'package:amanapp/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class AmanPays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // oiE (0:985)
        padding: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 8*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff1f0a0c)),
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupunmktza (WkJ53eM9vkTofSqbNkUnMk)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 96*fem),
              width: 601.29*fem,
              height: 706.79*fem,
              child: Stack(
                children: [
                  Positioned(
                    // backgroundshapexzS (0:986)
                    left: 41.5690917969*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 559.72*fem,
                        height: 618.3*fem,
                        child: Image.asset(
                          'assets/page-1/images/background-shape-rVU.png',
                          width: 559.72*fem,
                          height: 618.3*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // topnavFTk (0:987)
                    left: 12*fem,
                    top: 44*fem,
                    child: Align(
                      child: SizedBox(
                        width: 40*fem,
                        height: 40*fem,
                        child: Image.asset(
                          'assets/page-1/images/top-nav-UJS.png',
                          width: 40*fem,
                          height: 40*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iphonexornewerkvJ (0:993)
                    left: 0*fem,
                    top: 8.0001220703*fem,
                    child: Container(
                      width: 356.33*fem,
                      height: 25*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // leftsideH9Y (I0:993;1:233)
                            margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 235.67*fem, 0*fem),
                            width: 54*fem,
                            height: 21*fem,
                            child: Image.asset(
                              'assets/page-1/images/left-side-Ena.png',
                              width: 54*fem,
                              height: 21*fem,
                            ),
                          ),
                          Container(
                            // rightside15Y (I0:993;1:217)
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // autogroupa2qwZMx (WkJ5dJ3ka91bNEjQLaA2QW)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 0.33*fem),
                                  width: 17*fem,
                                  height: 20.33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/auto-group-a2qw.png',
                                    width: 17*fem,
                                    height: 20.33*fem,
                                  ),
                                ),
                                Container(
                                  // wififft (I0:993;1:222)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.03*fem, 0.37*fem),
                                  width: 15.27*fem,
                                  height: 10.97*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/wifi-jUz.png',
                                    width: 15.27*fem,
                                    height: 10.97*fem,
                                  ),
                                ),
                                Container(
                                  // batteryaH4 (I0:993;1:218)
                                  width: 24.33*fem,
                                  height: 11.33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/battery-GPp.png',
                                    width: 24.33*fem,
                                    height: 11.33*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // selectpaymentmethod4T8 (0:994)
                    left: 80*fem,
                    top: 56*fem,
                    child: Align(
                      child: SizedBox(
                        width: 207*fem,
                        height: 22*fem,
                        child: Text(
                          'Select Payment Method',
                          style: SafeGoogleFont (
                            'Raleway',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.175*ffem/fem,
                            color: Color(0xff1f0a0c),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle11GZC (0:997)
                    left: 20*fem,
                    top: 101*fem,
                    child: Align(
                      child: SizedBox(
                        width: 327*fem,
                        height: 131*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            border: Border.all(color: Color(0xffe3e3e3)),
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x07000000),
                                offset: Offset(0*fem, 10*fem),
                                blurRadius: 20*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle12Hz6 (0:998)
                    left: 20*fem,
                    top: 246*fem,
                    child: Align(
                      child: SizedBox(
                        width: 327*fem,
                        height: 382*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            border: Border.all(color: Color(0xffe3e3e3)),
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x07000000),
                                offset: Offset(0*fem, 10*fem),
                                blurRadius: 20*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // mastercard0192ZRp (0:999)
                    left: 87*fem,
                    top: 266*fem,
                    child: Align(
                      child: SizedBox(
                        width: 81*fem,
                        height: 45*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5718750954*ffem/fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Mastercard\n',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5718750954*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '****0192',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5718750954*ffem/fem,
                                  color: Color(0xff979797),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // visa0192X9g (0:1000)
                    left: 87*fem,
                    top: 329*fem,
                    child: Align(
                      child: SizedBox(
                        width: 53*fem,
                        height: 45*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5718750954*ffem/fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Visa\n',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5718750954*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '****0192',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5718750954*ffem/fem,
                                  color: Color(0xff979797),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // mastercard0192q3t (0:1001)
                    left: 87*fem,
                    top: 394*fem,
                    child: Align(
                      child: SizedBox(
                        width: 81*fem,
                        height: 45*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5718750954*ffem/fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Mastercard\n',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5718750954*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '****0192',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5718750954*ffem/fem,
                                  color: Color(0xff979797),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // visa01928BQ (0:1002)
                    left: 87*fem,
                    top: 457*fem,
                    child: Align(
                      child: SizedBox(
                        width: 53*fem,
                        height: 45*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5718750954*ffem/fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Visa\n',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5718750954*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '****0192',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5718750954*ffem/fem,
                                  color: Color(0xff979797),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // cashpyL (0:1003)
                    left: 87*fem,
                    top: 520.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 37*fem,
                        height: 26*fem,
                        child: Text(
                          'Cash',
                          style: SafeGoogleFont (
                            'Roboto Flex',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5718750954*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // creditordebitcardiop (0:1004)
                    left: 87*fem,
                    top: 565.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 140*fem,
                        height: 26*fem,
                        child: Text(
                          'Credit or Debit Card',
                          style: SafeGoogleFont (
                            'Roboto Flex',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5718750954*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // arrowleft2DVg (0:1005)
                    left: 321*fem,
                    top: 573*fem,
                    child: Align(
                      child: SizedBox(
                        width: 6.75*fem,
                        height: 12*fem,
                        child: Image.asset(
                          'assets/page-1/images/arrow-left-2-kJa.png',
                          width: 6.75*fem,
                          height: 12*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group514252ihL (0:1006)
                    left: 37*fem,
                    top: 276*fem,
                    child: Align(
                      child: SizedBox(
                        width: 36*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-514252-s3C.png',
                          width: 36*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group514262E9t (0:1009)
                    left: 88*fem,
                    top: 593*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-514262.png',
                          width: 24*fem,
                          height: 16*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group514257jsL (0:1012)
                    left: 37*fem,
                    top: 404*fem,
                    child: Align(
                      child: SizedBox(
                        width: 36*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-514257.png',
                          width: 36*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // switchejQ (0:1015)
                    left: 282*fem,
                    top: 186*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(2*fem, 2*fem, 2*fem, 2*fem),
                        width: 51*fem,
                        height: 31*fem,
                        decoration: BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/page-1/images/background.png',
                            ),
                          ),
                        ),
                        child: Align(
                          // knobLcE (I0:1015;10:2588)
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 27*fem,
                            height: 27*fem,
                            child: Image.asset(
                              'assets/page-1/images/knob.png',
                              width: 27*fem,
                              height: 27*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorH1g (0:1019)
                    left: 32*fem,
                    top: 128*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20.01*fem,
                        height: 18.02*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-Vze.png',
                          width: 20.01*fem,
                          height: 18.02*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // amanpayaed0000zAz (0:1020)
                    left: 61*fem,
                    top: 116*fem,
                    child: Align(
                      child: SizedBox(
                        width: 75*fem,
                        height: 42*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Raleway',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.4945802689*ffem/fem,
                              color: Color(0xff1f0a0c),
                            ),
                            children: [
                              TextSpan(
                                text: 'AMAN Pay\n',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.4926706297*ffem/fem,
                                  color: Color(0xff1f0a0c),
                                ),
                              ),
                              TextSpan(
                                text: 'AED 00.00',
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4926706297*ffem/fem,
                                  color: Color(0xff1f0a0c),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // addloyaltypointsse6 (0:1021)
                    left: 235*fem,
                    top: 129*fem,
                    child: Align(
                      child: SizedBox(
                        width: 89*fem,
                        height: 15*fem,
                        child: Text(
                          '+ Add Loyalty Points',
                          style: SafeGoogleFont (
                            'Roboto Flex',
                            fontSize: 10*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.4918748856*ffem/fem,
                            color: Color(0xffaa0f22),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // usemycreditforthisorderNar (0:1023)
                    left: 32*fem,
                    top: 189*fem,
                    child: Align(
                      child: SizedBox(
                        width: 191*fem,
                        height: 24*fem,
                        child: Text(
                          'Use my credit for this order',
                          style: SafeGoogleFont (
                            'Roboto Flex',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4926706297*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group514254TcJ (0:1024)
                    left: 315*fem,
                    top: 279*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5*fem, 5*fem, 5*fem, 5*fem),
                      width: 18*fem,
                      height: 18*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xffe3e3e3)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(100*fem),
                      ),
                      child: Center(
                        // rectangle30043Y7x (0:1026)
                        child: SizedBox(
                          width: double.infinity,
                          height: 8*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                              color: Color(0xffaa0f22),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group514256fTU (0:1027)
                    left: 315*fem,
                    top: 342*fem,
                    child: Container(
                      width: 18*fem,
                      height: 18*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(100*fem),
                      ),
                      child: Center(
                        // rectangle30042BRp (0:1028)
                        child: SizedBox(
                          width: double.infinity,
                          height: 18*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                              border: Border.all(color: Color(0xffe3e3e3)),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group5142587aN (0:1029)
                    left: 315*fem,
                    top: 407*fem,
                    child: Container(
                      width: 18*fem,
                      height: 18*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(100*fem),
                      ),
                      child: Center(
                        // rectangle30042r2A (0:1030)
                        child: SizedBox(
                          width: double.infinity,
                          height: 18*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                              border: Border.all(color: Color(0xffe3e3e3)),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group514260aD4 (0:1031)
                    left: 315*fem,
                    top: 470*fem,
                    child: Container(
                      width: 18*fem,
                      height: 18*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(100*fem),
                      ),
                      child: Center(
                        // rectangle30042Vqp (0:1032)
                        child: SizedBox(
                          width: double.infinity,
                          height: 18*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                              border: Border.all(color: Color(0xffe3e3e3)),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group514261254 (0:1033)
                    left: 315*fem,
                    top: 524*fem,
                    child: Container(
                      width: 18*fem,
                      height: 18*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(100*fem),
                      ),
                      child: Center(
                        // rectangle30042LrS (0:1034)
                        child: SizedBox(
                          width: double.infinity,
                          height: 18*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                              border: Border.all(color: Color(0xffe3e3e3)),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // paymentmethodvisa53L (0:1035)
                    left: 37*fem,
                    top: 467*fem,
                    child: Align(
                      child: SizedBox(
                        width: 36*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/page-1/images/payment-method-visa-88E.png',
                          width: 36*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // paymentmethodvisanCe (0:1037)
                    left: 37*fem,
                    top: 339*fem,
                    child: Align(
                      child: SizedBox(
                        width: 36*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/page-1/images/payment-method-visa.png',
                          width: 36*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // paymentmethodvisa6DL (0:1039)
                    left: 118*fem,
                    top: 593*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/page-1/images/payment-method-visa-spS.png',
                          width: 24*fem,
                          height: 16*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorD34 (0:1041)
                    left: 42*fem,
                    top: 523*fem,
                    child: Align(
                      child: SizedBox(
                        width: 26.67*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-mxS.png',
                          width: 26.67*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vector8A2 (0:1042)
                    left: 44*fem,
                    top: 569*fem,
                    child: Align(
                      child: SizedBox(
                        width: 25*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-oKk.png',
                          width: 25*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group514263SRc (0:1016)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 24*fem, 21*fem),
              width: double.infinity,
              height: 54*fem,
              decoration: BoxDecoration (
                color: Color(0xffaa0f22),
                borderRadius: BorderRadius.circular(15*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19f47a21),
                    offset: Offset(0*fem, 10*fem),
                    blurRadius: 5*fem,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Confirm',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Heebo',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.4675*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              // homeindicator3AW (0:996)
              margin: EdgeInsets.fromLTRB(117*fem, 0*fem, 120*fem, 0*fem),
              width: double.infinity,
              height: 5*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(100*fem),
                color: Color(0x4c9e9e9e),
              ),
            ),
          ],
        ),
      ),
          );
  }
}