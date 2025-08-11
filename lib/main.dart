import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ecomerce_app/home_screen.dart';
import 'ecomerce_app/second_screen.dart';
import 'ecomerce_app/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: secondScreen(),
    );
  }
}
