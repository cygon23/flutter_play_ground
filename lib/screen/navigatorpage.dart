// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Navigatorpage extends StatefulWidget {
  var data;
  Navigatorpage({Key? key, this.data}) : super(key: key);

  @override
  State<Navigatorpage> createState() => _NavigatorpageState();
}

class _NavigatorpageState extends State<Navigatorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page 01"), backgroundColor: Colors.red),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(280, 90),
            textStyle: TextStyle(fontSize: 24),
            shape: LinearBorder(),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page02(data: "Dta from page 01"),
              ),
            );
          },
          child: Text("Page 01"),
        ),
      ),
    );
  }
}

class Page02 extends StatefulWidget {
  var data;
  Page02({this.data, super.key});

  @override
  State<Page02> createState() => _Page02State();
}

class _Page02State extends State<Page02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page 02"), backgroundColor: Colors.red),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(280, 90),
              textStyle: TextStyle(fontSize: 24),
              shape: LinearBorder(),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page03()),
              );
            },

            child: Text("Page 02"),
          ),
          SizedBox(height: 12),
          Text(widget.data),
        ],
      ),
    );
  }
}

class Page03 extends StatefulWidget {
  const Page03({super.key});

  @override
  State<Page03> createState() => _Page03State();
}

class _Page03State extends State<Page03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page 03"), backgroundColor: Colors.red),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(280, 90),
            textStyle: TextStyle(fontSize: 24),
            shape: LinearBorder(),
          ),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName("/"));
          },
          child: Text("Page 03"),
        ),
      ),
    );
  }
}
