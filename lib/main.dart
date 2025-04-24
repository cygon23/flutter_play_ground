import 'package:flutter/material.dart';
import 'package:flutter_play_ground/screen/navigatorpage.dart';
// import 'package:flutter_play_ground/screen/buttonwidget.dart';
//import 'package:flutter_play_ground/screen/textfiled.dart';
// import 'package:flutter_play_ground/screen/imagewidget.dart';
// import 'package:flutter_play_ground/screen/containerwidget.dart';
// import 'package:flutter_play_ground/screen/column.dart';
//import 'package:flutter_play_ground/screen/listviewidget.dart';
// import 'package:flutter_play_ground/screen/homepage.dart';
// import 'package:flutter_play_ground/screen/scafold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        primarySwatch: Colors.red
      ),
      // home: Homepage(),
      // home: ScafoldLearn(),
      // home: Containerwidget(),
      // home: Rowcolumn(),
      // home: Listviewidget(),
      // home: Imagewidget(),
      // home: Buttonwidget(),
      // home: Textfiled(),
      home: Navigatorpage(),
    );
  }
}
