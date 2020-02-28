import 'package:flutter/material.dart';
import 'package:flutter_news/src/ui/screens/home.dart';

Widget makeRoute(
    {@required BuildContext context,
      @required String routeName,
      Object arguments}) {
  final Widget child =
  _buildRoute(context: context, routeName: routeName, arguments: arguments);
  return child;
}

Widget _buildRoute({
  @required BuildContext context,
  @required String routeName,
  Object arguments,
}) {
  switch (routeName) {
    case '/':
      return Home();
      break;

    default:
      return Scaffold(
          body: Center(child: Text("No route defined for $routeName")));
      break;
  }
}

