import 'package:flutter/material.dart';

class Drawerwidget extends StatefulWidget {
  const Drawerwidget({super.key});

  @override
  State<Drawerwidget> createState() => _DrawerwidgetState();
}

class _DrawerwidgetState extends State<Drawerwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              otherAccountsPictures: [
                CircleAvatar(
                  radius: 40,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/pexels-sebastiaan9977-1097456.jpg",
                      width: 240,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              currentAccountPicture: CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image.asset(
                    "assets/pexels-sebastiaan9977-1097456.jpg",
                    width: 240,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              accountName: Text(
                "Cygon kyomah",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              accountEmail: Text("kyomah@gmail.com"),
            ),

            //drawer header
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.amber),
            //   child: Column(
            //     children: [
            //       CircleAvatar(
            //         radius: 40,
            //         child: ClipOval(
            //           child: Image.asset(
            //             "assets/pexels-sebastiaan9977-1097456.jpg",
            //             width: 240,
            //             height: 240,
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //       ),
            //       SizedBox(height: 5),
            //       Text(
            //         "Cygon is makeing it",
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 15,
            //           color: Colors.white,
            //         ),
            //       ),
            //       SizedBox(height: 5),
            //       Text("hard pays"),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Favourite"),
                    leading: Icon(Icons.favorite_border_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("WorkFlow"),
                    leading: Icon(Icons.workspaces_outline),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Update"),
                    leading: Icon(Icons.update),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Plugins"),
                    leading: Icon(Icons.account_tree_rounded),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Notification"),
                    leading: Icon(Icons.notifications_off),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer widget"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    );
  }
}
