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
                });
              },
              child: Icon(
                islight
                    ? Icons.lightbulb_rounded
                    : Icons.lightbulb_outline_rounded,

                color: islight ? Colors.yellow : Colors.grey[700],
                size: 100,
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  isliked = !isliked;
                });
              },
              child: Icon(
                isliked ? Icons.favorite : Icons.favorite_border,
                color: isliked ? Colors.red : Colors.grey[700],
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
