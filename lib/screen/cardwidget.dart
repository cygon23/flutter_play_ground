import 'package:flutter/material.dart';

class Cardwidget extends StatefulWidget {
  const Cardwidget({super.key});

  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card widget"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 300,
            child: Card(
              //shapes the picture basing on the card's shape
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              shadowColor: Colors.blue,
              margin: EdgeInsets.all(8),
              child: Image.asset(
                "assets/pexels-sebastiaan9977-1097456.jpg",
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
