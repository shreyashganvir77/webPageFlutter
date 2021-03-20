import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/widgets/introCard.dart';
import 'package:testapp/widgets/multiSelect.dart';
import 'package:testapp/widgets/topDashboardWid.dart';

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
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                    fontSize: 18.0, color: Color(0xFFFF26333B)),
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
                                    fontSize: 18.0, color: Color(0xFFFF26333B)),
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
                                    fontSize: 18.0, color: Color(0xFFFF26333B)),
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
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF2F2F2),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      height: 200.0,
                                      width: 180,
                                      child: MultiSelect(),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _visible = false;
                                            });
                                            selectedItem.fillRange(
                                                0, listItems.length, false);
                                            print(selectedItem);
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
                                            selectedItem.fillRange(
                                                0, listItems.length, false);
                                            print(result);
                                          },
                                          child: Text(
                                            'Okay',
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
