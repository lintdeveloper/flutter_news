import 'package:flutter/material.dart';
import 'package:flutter_news/src/utils/const.dart';

import 'dashboard/dashboard.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  List<Widget> _children;

  @override
  void initState() {
    super.initState();
    _children = [
      NewsDashboardScreen(),
      //TODO: more screens
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 0,
          leading: Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Image.asset("assets/images/clipped_image.png"),
                  ),
                  Positioned(
                      bottom: -2,
                      left: 32,
                      child: Icon(
                        Icons.brightness_1,
                        color: Colors.red,
                        size: 24,
                      )),
                  Positioned(
                      bottom: 2,
                      left: 40,
                      child: Text("2",
                          style: TextStyle(color: Colors.white)))
                ],
              )
            ],
          ),
          title: Text(Constants.appName)
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white54,
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            //TODO: Bottom Nav Items
          ],
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
