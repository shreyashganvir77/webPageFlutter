import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/util/tags.dart';
import 'package:testapp/widgets/multiSelect.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              style:
                  GoogleFonts.lato(fontSize: 18.0, color: Color(0xFFFF26333B)),
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
              style:
                  GoogleFonts.lato(fontSize: 18.0, color: Color(0xFFFF26333B)),
            ),
          ),
        ),
      ],
    );
  }
}
