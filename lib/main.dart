import 'package:flutter/material.dart';
import 'package:auth_app1/loginPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Placement App',
      home: loginPage()
          );









  }

}