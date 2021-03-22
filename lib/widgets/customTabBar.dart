import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  final double height;
  final double width;
  final double fontSize;
  final int length;
  final List<String> tabValues;
  const CustomTabBar({
    Key key,
    this.height,
    this.width,
    this.fontSize,
    this.length,
    this.tabValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3.0),
        ),
        height: height,
        width: width,
        child: DefaultTabController(
          length: length,
          initialIndex: 0,
          child: TabBar(
            onTap: (int val) {
              print(val);
            },
            labelColor: Color(0xFF25323A),
            labelPadding: EdgeInsets.only(left: 2.0, right: 2.0),
            indicatorPadding: EdgeInsets.only(left: 12.0, right: 12.0),
            indicatorColor: Color(0xFF223038),
            unselectedLabelColor: Color(0xFF94969B),
            unselectedLabelStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: fontSize,
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
              for (int i = 0; i < tabValues.length; i++)
                Tab(
                  text: tabValues[i],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
