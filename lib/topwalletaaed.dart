import 'package:amanapp/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // refunddetailssPc (0:3320)
        width: double.infinity,
        height: 812*fem,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff1f0a0c)),
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupcmnvwuG (WkKGVjTgWo28TGYS1eCMNv)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 375*fem,
                height: 222*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle4276FQA (0:3351)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 375*fem,
                          height: 154*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xff1f0a0c),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(32*fem),
                                topRight: Radius.circular(32*fem),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x7fe3e9ef),
                                  offset: Offset(0*fem, 8*fem),
                                  blurRadius: 3*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // cursori2r (0:3358)
                      left: 32*fem,
                      top: 138.5*fem,
                      child: Align(
                        child: SizedBox(
                          width: 2*fem,
                          height: 16*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(1*fem),
                              color: Color(0xff09101d),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // cursorQAa (0:3360)
                      left: 68*fem,
                      top: 138.5*fem,
                      child: Align(
                        child: SizedBox(
                          width: 2*fem,
                          height: 16*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(1*fem),
                              color: Color(0xff09101d),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // refunddetailsv8v (0:3370)
                      left: 124*fem,
                      top: 57*fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 127*fem,
                            height: 19*fem,
                            child: Text(
                              'Refund Details',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Raleway',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.0449999703*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle4280ajG (0:3371)
                      left: 24*fem,
                      top: 108*fem,
                      child: Align(
                        child: SizedBox(
                          width: 327*fem,
                          height: 114*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(12*fem),
                              border: Border.all(color: Color(0xffdee8f1)),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group5142746Si (0:3372)
                      left: 304*fem,
                      top: 134*fem,
                      child: Align(
                        child: SizedBox(
                          width: 29.73*fem,
                          height: 24*fem,
                          child: Image.asset(
                           
                            ' images/page-1/images/group-514274-kop.png',
                            width: 29.73*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // pmyWW (0:3374)
                      left: 42*fem,
                      top: 164*fem,
                      child: Align(
                        child: SizedBox(
                          width: 112*fem,
                          height: 15*fem,
                          child: Text(
                            '14/02/2023, 2:47 PM',
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2368750572*ffem/fem,
                              color: Color(0xff1f0a0c),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // addedtoamanpayGEi (0:3375)
                      left: 42*fem,
                      top: 186*fem,
                      child: Align(
                        child: SizedBox(
                          width: 107*fem,
                          height: 15*fem,
                          child: Text(
                            'Added to AMAN Pay',
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2368750572*ffem/fem,
                              color: Color(0xff1f0a0c),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // aed0000Zjc (0:3376)
                      left: 42*fem,
                      top: 130*fem,
                      child: Align(
                        child: SizedBox(
                          width: 124*fem,
                          height: 32*fem,
                          child: Text(
                            '+AED 00.00',
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3333333333*ffem/fem,
                              color: Color(0xff1f0a0c),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroup4utnEar (WkKHanUxLAjtbo7urY4Utn)
              left: 0*fem,
              top: 222*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 0*fem),
                width: 375*fem,
                height: 590*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group514281ikv (0:3388)
                      margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 24*fem, 12*fem),
                      padding: EdgeInsets.fromLTRB(20*fem, 23*fem, 20*fem, 16*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xffe3e3e3)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x07000000),
                            offset: Offset(0*fem, 10*fem),
                            blurRadius: 20*fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // orderid156460vrz (0:3392)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.83*fem),
                            child: Text(
                              'Order ID: 156460',
                              style: SafeGoogleFont (
                                'Roboto Flex',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2375346941*ffem/fem,
                                color: Color(0xff1f0a0c),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupy9dyqUA (WkKJ825ukFSt6cbm3aY9dY)
                            margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 35*fem, 9*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // outlinemaplocationmappointy4a (0:3391)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.17*fem, 0.83*fem),
                                  width: 11.67*fem,
                                  height: 14.33*fem,
                                  child: Image.asset(
                                    'images/page-1/images/outline-map-location-map-point-ZRQ.png',
                                    width: 11.67*fem,
                                    height: 14.33*fem,
                                  ),
                                ),
                                Container(
                                  // oldmeccaalmoukarramahrdalsuhai (0:3390)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.17*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Old Mecca Al Moukarramah Rd, Al-Suhaifah',
                                    style: SafeGoogleFont (
                                      'Roboto Flex',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2368750572*ffem/fem,
                                      color: Color(0xff1f0a0c),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // yesterday1205am7KC (0:3394)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                            child: Text(
                              'Yesterday, 12:05 AM',
                              style: SafeGoogleFont (
                                'Roboto Flex',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.1725*ffem/fem,
                                color: Color(0xff1f0a0c),
                              ),
                            ),
                          ),
                          Text(
                            // itemsaia (0:3393)
                            '2 Items',
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 10*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725*ffem/fem,
                              color: Color(0xff1f0a0c),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group514280hHQ (0:3377)
                      margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 24*fem, 24*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 26.5*fem, 0*fem, 18*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xffe3e3e3)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x07000000),
                            offset: Offset(0*fem, 10*fem),
                            blurRadius: 20*fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogrouphxcawhY (WkKHqCEcRZAzFDerZfhXcA)
                            margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 173*fem, 10.5*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorsLJ (0:3387)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 1*fem),
                                  width: 18*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'images/page-1/images/vector-XJ6.png',
                                    width: 18*fem,
                                    height: 20*fem,
                                  ),
                                ),
                                Text(
                                  // ordersummaryBrn (0:3386)
                                  'Order Summary',
                                  style: SafeGoogleFont (
                                    'Roboto Flex',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3318750858*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group514245Kxz (0:3379)
                            margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 19*fem, 12*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // xds2de3a404iwge1xds2de3a404iwg (0:3380)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 112*fem, 0*fem),
                                  constraints: BoxConstraints (
                                    maxWidth: 125*fem,
                                  ),
                                  child: Text(
                                    '2x DS-2DE3A404IWG-E\n\n1x DS-2DE3A404IWG-E\n',
                                    style: SafeGoogleFont (
                                      'Heebo',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.0249999364*ffem/fem,
                                      color: Color(0xff1f0a0c),
                                    ),
                                  ),
                                ),
                                Container(
                                  // aed0000aed0000vSz (0:3381)
                                  constraints: BoxConstraints (
                                    maxWidth: 57*fem,
                                  ),
                                  child: Text(
                                    'AED 00.00\nAED 00.00',
                                    style: SafeGoogleFont (
                                      'Heebo',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2*ffem/fem,
                                      color: Color(0xff353535),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group514253Ree (0:3382)
                            margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 19*fem, 0*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // subtotaldeliveryfeevatZkr (0:3383)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 171*fem, 0*fem),
                                  constraints: BoxConstraints (
                                    maxWidth: 66*fem,
                                  ),
                                  child: Text(
                                    'Subtotal\nDelivery Fee\nVAT',
                                    style: SafeGoogleFont (
                                      'Heebo',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2*ffem/fem,
                                      color: Color(0xff6b6b6b),
                                    ),
                                  ),
                                ),
                                Container(
                                  // aed0000aed0000aed00005DQ (0:3384)
                                  constraints: BoxConstraints (
                                    maxWidth: 57*fem,
                                  ),
                                  child: Text(
                                    'AED 00.00\nAED 00.00\nAED 00.00',
                                    style: SafeGoogleFont (
                                      'Heebo',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2*ffem/fem,
                                      color: Color(0xff6b6b6b),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupfadtjYr (WkKH8dZsE5ZYJAJTygfADt)
                      margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 203*fem, 18*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorsf4 (0:3400)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 2*fem),
                            width: 25*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'images/page-1/images/vector-fka.png',
                              width: 25*fem,
                              height: 20*fem,
                            ),
                          ),
                          Text(
                            // paymentdetails4jY (0:3395)
                            'Payment Details',
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // line6Cqk (0:3401)
                      margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 24*fem, 14*fem),
                      width: double.infinity,
                      height: 1*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffdee8f1),
                      ),
                    ),
                    Container(
                      // autogroupk4q4YPp (WkKHHNpJ2GADbWZDupK4q4)
                      margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 25*fem, 73.5*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupgbenGqc (WkKHR86PQwNhmuU4mRGBen)
                            margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 9*fem, 0*fem),
                            width: 25*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'images/page-1/images/auto-group-gben.png',
                              width: 25*fem,
                              height: 20*fem,
                            ),
                          ),
                          Container(
                            // mastercard0192PQS (0:3396)
                            margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 136*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 81*fem,
                            ),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Roboto Flex',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.0625*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Mastercard\n',
                                  ),
                                  TextSpan(
                                    text: '**** 0192',
                                    style: SafeGoogleFont (
                                      'Roboto Flex',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.4166666667*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            // aed0000Fqx (0:3397)
                            'AED 00.00',
                            style: SafeGoogleFont (
                              'Roboto Flex',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.0625*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // homeindicatorPBU (0:3368)
                      width: 375*fem,
                      height: 34*fem,
                      child: Image.asset(
                        'images/page-1/images/home-indicator-82J.png',
                        width: 375*fem,
                        height: 34*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // statusbarnotchiphonexornewerXH (0:3402)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 44*fem,
                  child: Image.asset(
                    'images/page-1/images/status-bar-notch-iphone-x-or-newer-Kvv.png',
                    width: 375*fem,
                    height: 44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // group37535yvN (0:3426)
              left: 16*fem,
              top: 48*fem,
              child: Align(
                child: SizedBox(
                  width: 36*fem,
                  height: 36*fem,
                  child: Image.asset(
                    'images/page-1/images/group-37535-3rn.png',
                    width: 36*fem,
                    height: 36*fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}