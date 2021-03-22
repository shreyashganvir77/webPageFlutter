import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key key,
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
        height: 100.0,
        width: 750.0,
        child: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: TabBar(
            labelColor: Color(0xFF25323A),
            labelPadding: EdgeInsets.only(left: 2.0, right: 2.0),
            indicatorPadding: EdgeInsets.only(left: 12.0, right: 12.0),
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
    );
  }
}
