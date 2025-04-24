import 'package:flutter/material.dart';

class Tabbarwidget extends StatefulWidget {
  const Tabbarwidget({super.key});

  @override
  State<Tabbarwidget> createState() => _TabbarwidgetState();
}

class _TabbarwidgetState extends State<Tabbarwidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.red,
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Tab 01", icon: Icon(Icons.home)),
              Tab(text: "Tab 02", icon: Icon(Icons.numbers)),
              Tab(text: "Tab 03", icon: Icon(Icons.dialer_sip)),
              Tab(text: "Tab 03", icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.black.withGreen(200),
              child: Center(
                child: Text("Tab 01", style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text("Tab 02", style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              color: Colors.teal,
              child: Center(
                child: Text("Tab 03", style: TextStyle(fontSize: 30)),
              ),
            ),
            Container(
              color: Colors.amber,
              child: Center(
                child: Text("Tab 04", style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
