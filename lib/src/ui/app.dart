import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_news/src/router.dart';
import 'package:flutter_news/src/utils/utils.dart';

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Constants.lightPrimary,
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.themeData,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => makeRoute(
            context: context,
            routeName: settings.name,
            arguments: settings.arguments,
          ),
          maintainState: true,
          fullscreenDialog: false,
        );
      }
    );
  }
}