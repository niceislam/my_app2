import 'package:flutter/material.dart';

class secondScreen extends StatefulWidget {
  const secondScreen({super.key});

  @override
  State<secondScreen> createState() => _secondScreenState();
}

class _secondScreenState extends State<secondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Flutter",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          Icon(Icons.notifications, size: 28, color: Colors.indigo),
          SizedBox(width: 7),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(100),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/image/Flutter.png"),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.play_circle_fill_rounded,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Flutter Complete Course",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Created by Dear Programmer",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              "55 Videos",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
              height: 80,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(40),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    color: Colors.indigo,
                    child: SizedBox(
                      height: 55,
                      width: 150,
                      child: Center(
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.indigo.withAlpha(100),
                    child: SizedBox(
                      height: 55,
                      width: 150,
                      child: Center(
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.play_circle, color: Colors.indigo, size: 55),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          "Intorduction to Flutter",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
