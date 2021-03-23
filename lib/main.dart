import 'package:flutter/material.dart';
import 'package:testapp/util/responsiveLayout.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:testapp/widgets/customTabBar.dart';
// import 'package:testapp/widgets/introCard.dart';
// import 'package:testapp/widgets/middlePageView.dart';
// import 'package:testapp/widgets/multiSelect.dart';
// import 'package:testapp/widgets/questionCard.dart';
// import 'package:testapp/widgets/sideBarWid.dart';
// import 'package:testapp/widgets/sideQuesWid.dart';
// import 'package:testapp/widgets/topDashboardWid.dart';
// import 'util/tags.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String dropdownValue = 'One';
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return LayoutChanger();
  }
}
