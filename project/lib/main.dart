
import 'package:flutter/material.dart';
import 'package:project/Home_secreeen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home market',
      theme: ThemeData(
      ),
     
  
      home: Home_Secreen(),
    );
  }
}
