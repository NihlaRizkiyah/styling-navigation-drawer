import 'package:flutter/material.dart';
import 'package:acara_16/DrawerScreen.dart';
import 'package:acara_16/Chart_model.dart';
import 'package:acara_16/LoginPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
