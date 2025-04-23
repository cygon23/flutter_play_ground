import 'package:flutter/material.dart';

class ScafoldLearn extends StatelessWidget {
  const ScafoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Appbar"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Hello Word",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            foreground: Paint()..style = PaintingStyle.stroke,
            shadows: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.white24,
                offset: Offset(0, 1),
              ),
            ],
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
    );
  }
}
