import 'package:flutter/material.dart';

class Pageviewer extends StatefulWidget {
  const Pageviewer({super.key});

  @override
  State<Pageviewer> createState() => _PageviewerState();
}

class _PageviewerState extends State<Pageviewer> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("PageView Widget"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.previousPage(
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeIn,
              );
            },
            icon: Icon(Icons.arrow_left),
          ),
          IconButton(
            onPressed: () {
              controller.nextPage(
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeIn,
              );
            },
            icon: Icon(Icons.arrow_right),
          ),
        ],
      ),
      body: PageView(
        // physics: NeverScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text("Page 01", style: TextStyle(fontSize: 30)),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Page 02", style: TextStyle(fontSize: 30)),
            ),
          ),
          Container(
            color: Colors.teal,
            child: Center(
              child: Text("Page 03", style: TextStyle(fontSize: 30)),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text("Page 04", style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}
