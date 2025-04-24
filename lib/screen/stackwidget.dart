import 'package:flutter/material.dart';

class Stackwidget extends StatefulWidget {
  const Stackwidget({super.key});

  @override
  State<Stackwidget> createState() => _StackwidgetState();
}

class _StackwidgetState extends State<Stackwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Stack Widget"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          // textDirection: TextDirection.rtl,
          alignment: Alignment.center,
          children: [
            Container(width: 250, height: 250, color: Colors.redAccent),
            Container(width: 200, height: 200, color: Colors.blueAccent),
            Container(width: 150, height: 150, color: Colors.greenAccent),
            // Text("Hellow"),
          ],
        ),
      ),
    );
  }
}
