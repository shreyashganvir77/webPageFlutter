import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/widgets/introCard.dart';
import 'package:testapp/widgets/multiSelect.dart';
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
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xFFF2F2F2),
        body: Column(
          children: [
            TopDashboardWid(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: IntroCard(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        //height: 450.0,
                        width: 200.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150.0,
                              height: 50.0,
                              child: ListTile(
                                leading: Icon(
                                  Icons.home,
                                  color: Color(0xFF26333B),
                                ),
                                title: Text(
                                  'Home',
                                  style: GoogleFonts.lato(
                                      fontSize: 18.0,
                                      color: Color(0xFFFF26333B)),
                                ),
                                onTap: () {},
                              ),
                            ),
                            Container(
                              height: 50.0,
                              width: 150.0,
                              child: ListTile(
                                onTap: () {},
                                leading: Icon(
                                  Icons.person,
                                  color: Color(0xFF26333B),
                                ),
                                title: Text(
                                  'Profile',
                                  style: GoogleFonts.lato(
                                      fontSize: 18.0,
                                      color: Color(0xFFFF26333B)),
                                ),
                              ),
                            ),
                            Container(
                              height: 50.0,
                              width: 150.0,
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    _visible = !_visible;
                                  });
                                },
                                leading: Icon(
                                  FontAwesomeIcons.tags,
                                  color: Color(0xFF26333B),
                                ),
                                title: Text(
                                  'Tags',
                                  style: GoogleFonts.lato(
                                      fontSize: 18.0,
                                      color: Color(0xFFFF26333B)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Visibility(
                                visible: _visible,
                                maintainState: true,
                                child: Card(
                                  color: Color(0xFFF2F2F2),
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 220.0,
                                        width: 200.0,
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          children: [
                                            for (int i = 0;
                                                i < tags.length;
                                                i++)
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 18.0),
                                                    child: Text(
                                                      mainTag[i],
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  MultiSelect(
                                                    itemAns: tagsAns[i],
                                                    items: tags[i],
                                                  ),
                                                ],
                                              ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                _visible = false;
                                              });
                                              checkAcco.fillRange(0,
                                                  accomodation.length, false);
                                              print(checkAcco);
                                              result.clear();
                                            },
                                            child: Text(
                                              'Cancel',
                                              style: GoogleFonts.lato(
                                                  fontSize: 16.0,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40.0,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                _visible = false;
                                              });
                                              checkAcco.fillRange(0,
                                                  accomodation.length, false);
                                              print(result);
                                            },
                                            child: Text(
                                              'Apply',
                                              style: GoogleFonts.lato(
                                                  fontSize: 16.0,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            height: 100.0,
                            width: 750.0,
                            child: DefaultTabController(
                              length: 4,
                              initialIndex: 0,
                              child: TabBar(
                                labelColor: Color(0xFF25323A),
                                labelPadding:
                                    EdgeInsets.only(left: 2.0, right: 2.0),
                                indicatorPadding:
                                    EdgeInsets.only(left: 12.0, right: 12.0),
                                indicatorColor: Color(0xFF223038),
                                unselectedLabelColor: Color(0xFF94969B),
                                unselectedLabelStyle: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 23.0,
                                ),
                                indicatorWeight: 2.0,
                                labelStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w900,
                                ),
                                indicator: UnderlineTabIndicator(
                                  borderSide: BorderSide(
                                    color: Color(0xFF15232B),
                                    width: 2.0,
                                  ),
                                ),
                                tabs: [
                                  Tab(
                                    text: 'Recent Questions',
                                  ),
                                  Tab(
                                    text: 'Most Answered',
                                  ),
                                  Tab(
                                    text: 'Recent Answers',
                                  ),
                                  Tab(
                                    text: 'Most Voted',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            height: 250.0,
                            width: 750.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18.0, top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Asked: March 21, 2021',
                                        style: GoogleFonts.roboto(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text(
                                        'In:  ',
                                        style: GoogleFonts.roboto(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        'Career, Placements',
                                        style: GoogleFonts.roboto(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.blue,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Is Five too young yo let my kid watch the walking dead?',
                                    style: GoogleFonts.roboto(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF2E3037),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "After experience with my own cousin, I would say that 5 is too young. Once, I showed a clip to my 6 year old cousin on the internet. I thought it was absoulutely hilarious, bu he started to cry and he did't want to sleep alone that night.",
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Container(
                                    height: 65.0,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 30.0,
                                          width: 100.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xFFDEDFE0),
                                                width: 2.0),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(
                                                Icons.comment,
                                                color: Color(0xFF272930),
                                              ),
                                              Text(
                                                '14 Answers',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xFF94979B),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30.0,
                                          width: 100.0,
                                          child: TextButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                Color(0xFF272930),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              'Answer',
                                              style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
