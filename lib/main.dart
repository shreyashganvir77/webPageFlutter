import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/widgets/customTabBar.dart';
import 'package:testapp/widgets/introCard.dart';
import 'package:testapp/widgets/multiSelect.dart';
import 'package:testapp/widgets/questionCard.dart';
import 'package:testapp/widgets/sideBarWid.dart';
import 'package:testapp/widgets/topDashboardWid.dart';
import 'util/tags.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TopDashboardWid(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: IntroCard(),
            ),
            Expanded(
              child: ListView(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SideBar(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: 200.0,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: tags.length,
                              itemBuilder: (context, index) {
                                return MultiSelect(
                                  itemAns: tagsAns[index],
                                  items: tags[index],
                                  index: index,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 108.0,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 2.0,
                          ),
                          CustomTabBar(),
                          SizedBox(
                            height: 2.0,
                          ),
                          QuestionCard(),
                          SizedBox(
                            height: 5.0,
                          ),
                          QuestionCard(),
                          SizedBox(
                            height: 5.0,
                          ),
                          QuestionCard(),
                          SizedBox(
                            height: 5.0,
                          ),
                          QuestionCard(),
                          SizedBox(
                            height: 5.0,
                          ),
                          QuestionCard(),
                          SizedBox(
                            height: 5.0,
                          ),
                          QuestionCard(),
                        ],
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
