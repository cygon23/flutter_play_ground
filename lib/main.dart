import 'package:flutter/material.dart';
import 'package:flutter_play_ground/screen/bottomnavigationwidget.dart';
import 'package:flutter_play_ground/screen/stackwidget.dart';
import 'package:flutter_play_ground/screen/whatsappui.dart';
//import 'package:flutter_play_ground/screen/cardwidget.dart';
//import 'package:flutter_play_ground/screen/drawerwidget.dart';
// import 'package:flutter_play_ground/screen/navigatorpage.dart';
// import 'package:flutter_play_ground/screen/pageviewer.dart';
//import 'package:flutter_play_ground/screen/tabbarwidget.dart';
// import 'package:flutter_play_ground/screen/buttonwidget.dart';
//import 'package:flutter_play_ground/screen/textfiled.dart';
// import 'package:flutter_play_ground/screen/imagewidget.dart';
// import 'package:flutter_play_ground/screen/containerwidget.dart';
// import 'package:flutter_play_ground/screen/column.dart';
//import 'package:flutter_play_ground/screen/listviewidget.dar
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
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        // primarySwatch: Colors.red
      ),
      // home: Homepage(),
      // home: ScafoldLearn(),
      // home: Containerwidget(),
      // home: Rowcolumn(),
      // home: Listviewidget(),
      // home: Imagewidget(),
      // home: Buttonwidget(),
      // home: Textfiled(),
      // home: Navigatorpage(),
      // home: Pageviewer(),
      // home: Tabbarwidget(),
      // home: Cardwidget(),
      // home:Drawerwidget()
      // home: Bottomnavigationwidget(),
      // home: Stackwidget(),
      home: Whatsapui()
    );
  }
}
