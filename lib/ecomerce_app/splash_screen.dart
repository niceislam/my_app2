import 'dart:developer';
import 'package:ecommerce/ecomerce_app/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/lamp.png"),
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
          Container(
            height: 343,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Learning is Everything",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Learning with pleasure with Dear",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Programmer, Whatever you are.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 10,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen1()),
                      );
                    },
                    child: Text(
                      "Get Start",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
