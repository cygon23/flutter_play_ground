import 'package:flutter/material.dart';

class Bottomnavigationwidget extends StatefulWidget {
  const Bottomnavigationwidget({super.key});

  @override
  State<Bottomnavigationwidget> createState() => _BottomnavigationwidgetState();
}

class _BottomnavigationwidgetState extends State<Bottomnavigationwidget> {
  final pages = [Page1(), Page2(), Page3()];
  var currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        backgroundColor: Colors.white,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_outlined),
            label: "Contacts",
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Bottom navigation widget"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: pages[currentindex],
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Home",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Favourite",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Contact",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }
}
