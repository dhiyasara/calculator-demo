import 'package:flutter/material.dart';
import 'package:calcnav_android/pages/menu.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyMenu(),
    );
  }
}