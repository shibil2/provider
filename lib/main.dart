import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool islight = false;
  bool isliked = false;
  bool isStared = false;
  String countstar = "0";
  String countheart = "0";
  String countlight = "0";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  islight = !islight;
                  countlight = islight ? "1" : "0";
                });
              },
              child: Row(
                children: [
                  Icon(
                    islight
                        ? Icons.lightbulb_rounded
                        : Icons.lightbulb_outline_rounded,

                    color: islight ? Colors.yellow : Colors.grey[700],
                    size: 100,
                  ),
                  SizedBox(width: 10),
                  Text(
                    countlight,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  isliked = !isliked;
                  countheart = isliked ? "1" : "0";
                });
              },
              child: Row(
                children: [
                  Icon(
                    isliked ? Icons.favorite : Icons.favorite_border,
                    color: isliked ? Colors.red : Colors.grey[700],
                    size: 100,
                  ),
                  SizedBox(width: 10),
                  Text(
                    countheart,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  isStared = !isStared;
                  countstar = isStared ? "1" : "0";
                });
              },
              child: Row(
                children: [
                  Icon(
                    isStared ? Icons.star : Icons.star_border,
                    color: isStared ? Colors.blue : Colors.grey[700],
                    size: 100,
                  ),
                  SizedBox(width: 10),
                  Text(
                    countstar,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
