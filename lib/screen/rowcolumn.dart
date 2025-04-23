import 'package:flutter/material.dart';

class Rowcolumn extends StatelessWidget {
  const Rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("row & column"),
        backgroundColor: Colors.redAccent,
      ),

      body: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //oveflow problem in row
          Expanded(
            child: Text(
              "ASDFGHJKhwhfuehf3ufh3fnefhyyyjhf3f3iu f34ufg3fg f3ijeowje feufyheufhkedwkdhwef p4tgcc4",
            ),
          ),
          // Container(color: Colors.redAccent, width: 75, height: 100),
          // Container(color: Colors.lightBlue, width: 50, height: 50),
          // Container(color: Colors.black87, width: 100, height: 80),
        ],
      ),
    );
  }
}
