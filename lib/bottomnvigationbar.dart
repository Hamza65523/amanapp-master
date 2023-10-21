import 'package:amanapp/Cart5.dart';
import 'package:amanapp/Favourite.dart';
import 'package:amanapp/HomeOrder.dart';
import 'package:amanapp/Notifications.dart';
import 'package:amanapp/Profile.dart';
import 'package:amanapp/drawer.dart';
import 'package:amanapp/main.dart';
import 'package:amanapp/redux/reducer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);
    final xOffset = store.state.xOffset;
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          onTap: (value) {
            if (value == 3)
              StoreProvider.of<AppState>(context).dispatch(
                UpdatePositionAction(
                  isObscure: false,
                  xOffset: 230,
                  yOffset: 150,
                  scaleFactor: 0.6,
                  isDrawerOpen: true,
                ),
              );
            else if (value == 0)
              StoreProvider.of<AppState>(context).dispatch(
                UpdatePositionAction(
                  isObscure: false,
                  xOffset: 0,
                  yOffset: 0,
                  scaleFactor: 1,
                  isDrawerOpen: false,
                ),
              );

            setState(() {});
          },
          currentIndex: 0,
          height: 50,
          backgroundColor: Color(0xff200A0D),
          items: const <BottomNavigationBarItem>[
            //active color use on first

            BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/Homenav.png')),
                activeIcon: Image(image: AssetImage('assets/camerass.png'))),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/Bell.png')),
                activeIcon: Image(image: AssetImage('assets/activeBell.png'))),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/Heart Angle.png')),
                activeIcon: Image(image: AssetImage('assets/heartactive.png'))),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage('assets/barmeny.png')),
                activeIcon: Image(image: AssetImage('assets/barmeny.png'))),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: HomePage(),
                );
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: Notifications(),
                  ),
                );
              });
            case 2:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: Favourite(),
                  ),
                );
              });
            case 3:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: HomePage(),
                  ),
                );
              });

            case 4:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: Text("page dates "),
                  ),
                );
              });
            default:
              CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: Container(
                    child: Text("page dates "),
                  ),
                );
              });
          }
          ;
          return Container();
        });
  }
}
