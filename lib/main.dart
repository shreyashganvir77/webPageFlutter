import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/widgets/multiSelect.dart';

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
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 8.0, left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFF272930),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/logo.png',
                        ),
                        color: Colors.white,
                        height: 50.0,
                        width: 50.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'ICDB',
                          style: GoogleFonts.lato(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Container(
                        height: 100.0,
                        width: 3.0,
                        color: Color(0xFF2E3037),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: GoogleFonts.lato(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Blogs',
                          style: GoogleFonts.lato(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'About',
                          style: GoogleFonts.lato(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Contact',
                          style: GoogleFonts.lato(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
