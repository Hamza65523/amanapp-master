import 'package:amanapp/AddNewCard.dart';
import 'package:amanapp/AddVoucher.dart';
import 'package:amanapp/Aman.dart';
import 'package:amanapp/Brian.dart';
import 'package:amanapp/CancledOrder.dart';
import 'package:amanapp/Cart5.dart';
import 'package:amanapp/ChangeDelivery.dart';
import 'package:amanapp/Email.dart';
import 'package:amanapp/Favourite.dart';
import 'package:amanapp/Help.dart';
import 'package:amanapp/Home.dart';
import 'package:amanapp/HomeOrder.dart';
import 'package:amanapp/MobileNum.dart';
import 'package:amanapp/Name.dart';
import 'package:amanapp/Notifications.dart';
import 'package:amanapp/OrderDetails.dart';
import 'package:amanapp/OrderRecording.dart';
import 'package:amanapp/Orders.dart';
import 'package:amanapp/Password.dart';
import 'package:amanapp/ProductDetail.dart';
import 'package:amanapp/Profile.dart';
import 'package:amanapp/RateOrder.dart';
import 'package:amanapp/Referal.dart';
import 'package:amanapp/RefundDetails.dart';
import 'package:amanapp/Search.dart';
import 'package:amanapp/Setting.dart';
import 'package:amanapp/Term.dart';
import 'package:amanapp/TopWallet.dart';
import 'package:amanapp/VerifyLink.dart';
import 'package:amanapp/YourOrder.dart';
import 'package:amanapp/add.dart';
import 'package:amanapp/addaddressdetailwithcurrenlocation.dart';
import 'package:amanapp/addadressmap2.dart';
import 'package:amanapp/addnewaddressmap.dart';
// import 'package:amanapp/aed.';
import 'package:amanapp/bottomnvigationbar.dart';
// import 'package:amanapp/cart.dart';
import 'package:amanapp/changedeliveryaddress.dart';
// import 'package:amanapp/cart2.dart';
import 'package:amanapp/checkout.dart';
import 'package:amanapp/checkout1.dart';
import 'package:amanapp/createpassword.dart';
import 'package:amanapp/createyouraccount.dart';
import 'package:amanapp/custom_stepper.dart';
import 'package:amanapp/drawer.dart';
import 'package:amanapp/homezubair.dart';
// import 'package:amanapp/login.dart';
import 'package:amanapp/login1zubair.dart';
import 'package:amanapp/loginscreen.dart';
import 'package:amanapp/map1.dart';
import 'package:amanapp/otp.dart';
import 'package:amanapp/pr.dart';
import 'package:amanapp/redux/reducer.dart';
import 'package:amanapp/savedaddressmap.dart';
import 'package:amanapp/selectpaymentmethod.dart';
import 'package:amanapp/showpicker.dart';
import 'package:amanapp/stepar.dart';
import 'package:amanapp/test.dart';
import 'package:amanapp/thanks.dart';
import 'package:amanapp/timmer/homepage.dart';
import 'package:amanapp/topwalletaaed.dart';
import 'package:flutter/material.dart';
import 'CancledMyOrder.dart';
import 'Order Delivery In Progress.dart';
import 'orderplaced.dart';
import 'splashscreen.dart';
// main.dart
import 'package:amanapp/redux/test23.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<AppState>(
    reducer,
    initialState: AppState(
      isObscure: false,
      xOffset: 0.0,
      yOffset: 0.0,
      scaleFactor: 1.0,
      isDrawerOpen: false,
    ),
  );

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  MyApp({required this.store});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Redux Example',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SplashScreen(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), HomeOrder()],
      ),
    );
  }
}
