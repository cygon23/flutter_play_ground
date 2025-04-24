import 'package:flutter/material.dart';

class Listviewidget extends StatelessWidget {
  const Listviewidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lst = List.generate(20, (index) => "$index");
    final lst1 = ["Tanznia", "kenya", "rwanda", "malawi", "uganda"];
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),

      // body: ListView(
      //   children: [
      //     ListTile(
      //       title: Text("Cygon made this"),
      //       subtitle: Text("learing pays"),
      //       trailing: Icon(Icons.star, color: Colors.orange),
      //       leading: CircleAvatar(
      //         backgroundColor: Colors.brown.shade800,
      //         child: Text("CY"),
      //       ),
      //     ),

      //   ],
      // ),
      //instead of keeping repeating the code now listview.builder come in place
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.black),
        itemCount: lst1.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(lst1[index]);
            },
            title: Text(lst1[index]),
            subtitle: Text("country name"),
            trailing: Icon(Icons.star, color: Colors.orange),
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: Text(lst1[index][0]),
            ),
          );
        },
      ),
    );
  }
}
