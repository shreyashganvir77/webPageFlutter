import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Image(
              image: AssetImage('assets/images/cclogobig.png'),
              height: 100.0,
            ),
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
            Container(
              height: 40.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(FontAwesomeIcons.tags),
                    SizedBox(
                      width: 10.0,
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
            SizedBox(
              height: 15.0,
            ),
            Visibility(
              visible: visibleTag,
              child: ShowTags(),
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
