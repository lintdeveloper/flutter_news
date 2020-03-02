import 'package:flutter/material.dart';
import 'package:flutter_news/src/ui/screens/screens.dart';
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
      DiscoverScreen(),
      NotificationsScreen(),
      ProfileScreen()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
//        appBar: AppBar(
//          elevation: 0,
//          centerTitle: true,
//          title: Text(Constants.appName)
//        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white54,
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                width: 18,
                child: Image.asset('assets/images/home.png',
                    color: _currentIndex == 0
                        ? Color(0xff59C2FF)
                        : Colors.black38),
              ),
              title: Text('Home',
                  style: TextStyle(
                      color: _currentIndex == 0
                          ? Color(0xff59C2FF)
                          : Colors.black38)),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 18,
                child: Image.asset('assets/images/discover.png',
                    color: _currentIndex == 1
                        ? Color(0xff59C2FF)
                        : Colors.black38),
              ),
              title: Text(
                'Discover',
                style: TextStyle(
                  color:
                  _currentIndex == 1 ? Color(0xff59C2FF) : Colors.black38,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 18,
                child: Image.asset('assets/images/notifications.png',
                    color: _currentIndex == 2
                        ? Color(0xff59C2FF)
                        : Colors.black38),
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color:
                  _currentIndex == 2 ? Color(0xff59C2FF) : Colors.black38,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 18,
                child: Image.asset('assets/images/profile.png',
                    color: _currentIndex == 3
                        ? Color(0xff59C2FF)
                        : Colors.black38),
              ),
              title: Text('Profile',
                  style: TextStyle(
                    color:
                    _currentIndex == 3 ? Color(0xff59C2FF) : Colors.black38,
                  )),
            ),
          ],
//            onTap: onTabTapped
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
