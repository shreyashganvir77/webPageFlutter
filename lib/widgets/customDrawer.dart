import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/aboutUs.dart';
import 'package:testapp/util/tags.dart';
import 'package:testapp/widgets/multiSelect.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool visibleTag = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16.0,
      child: Container(
        color: Colors.white,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Logo
            Image(
              image: AssetImage('assets/images/newlogo.png'),
              height: 100.0,
            ),
            SizedBox(
              height: 25.0,
            ),
            // LogIn button
            Center(
              child: SizedBox(
                height: 35.0,
                width: 80.0,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {},
                  child: Text(
                    'LogIn',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ),
            //Tag Row
            Container(
              alignment: Alignment.center,
              height: 40.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.tags,
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Tags',
                      style: GoogleFonts.roboto(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          visibleTag = !visibleTag;
                        });
                      },
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            ),
            //Tags Container
            Visibility(
              visible: visibleTag,
              child: ShowTags(),
            ),
            //Blog Row
            Container(
              alignment: Alignment.center,
              height: 40.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.blog,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Blogs',
                        style: GoogleFonts.roboto(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //About Us! Row
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUs(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 40.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.info,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'About Us',
                        style: GoogleFonts.roboto(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 300.0,
      child: ListView(
        shrinkWrap: true,
        children: [
          for (int i = 0; i < tags.length; i++)
            MultiSelect(
              index: i,
              itemAns: tagsAns[i],
              items: tags[i],
            ),
        ],
      ),
    );
  }
}
