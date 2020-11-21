import "package:flutter/material.dart";
import 'LoginScreen.dart';
import 'CalendarScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: CalendarPage());
  }
}
