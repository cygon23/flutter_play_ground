import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
  const Imagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    final img1 = "https://someimage.com";
    final img2 = "https://someimage.com";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Image Widget"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.network(
            img1,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            loadingBuilder:
                (context, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : Container(
                          width: 240,
                          height: 240,
                          child: Center(child: CircularProgressIndicator()),
                        ),
          ),
          CircleAvatar(backgroundImage: NetworkImage(img2), radius: 120),
          Image.asset(
            'assets/pexels-sebastiaan9977-1097456.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
