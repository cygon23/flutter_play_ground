import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  const Buttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("buttons"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(280, 80),
                textStyle: TextStyle(fontSize: 24),
                //  primary: Colors.orange,
                //   onPrimary: Colors.black
              ),
              onPressed: () {},
              child: Text("Eleveted button"),
            ),

            SizedBox(height: 15),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(280, 80),
                textStyle: TextStyle(fontSize: 24),
                side: BorderSide(width: 3, color: Colors.blue),
                // primary: Colors.orange,
                //   onPrimary: Colors.black
              ),
              onPressed: () {},
              child: Text("OutlinedButton"),
            ),

            SizedBox(height: 15),

            IconButton(
              iconSize: 80,
              onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
