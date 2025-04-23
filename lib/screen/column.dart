import 'package:flutter/material.dart';

class Rowcolumn extends StatelessWidget {
  const Rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("column"), backgroundColor: Colors.redAccent),

      body: Container(
        width: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(color: Colors.white, width: 75, height: 100),
            Container(color: Colors.lightBlue, width: 50, height: 50),
            Container(color: Colors.black87, width: 100, height: 80),
          ],
        ),
      ),
    );
  }
}
