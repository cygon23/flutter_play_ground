import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var icons = CupertinoIcons.heart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Center(
        child: IconButton(
          iconSize: 200,
          icon: Icon(icons, color: Colors.red),
          onPressed: () {
            setState(() {
              icons = CupertinoIcons.heart_fill;
            });
          },
        ),
      ),
    );
  }
}
// This is a simple Flutter app that displays a heart icon in the center of the screen.