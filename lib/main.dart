import 'package:flutter/material.dart';
import 'package:mock_app_flutter/src/app.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: App()
    );
  }
}

