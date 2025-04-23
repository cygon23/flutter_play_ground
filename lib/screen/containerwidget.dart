import 'package:flutter/material.dart';

class Containerwidget extends StatelessWidget {
  const Containerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("containerAPP"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          print("pressed");
        },
        child: Container(
          child: Text("Testing"),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.green,
            // borderRadius: BorderRadius.circular(20),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 5),
          ),
        ),
      ),
    );
  }
}
