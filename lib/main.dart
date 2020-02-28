import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_news/src/ui/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}