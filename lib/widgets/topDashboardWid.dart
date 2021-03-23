import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/util/tags.dart';
import 'package:testapp/widgets/introCard.dart';
import 'package:testapp/widgets/middlePageView.dart';
import 'package:testapp/widgets/multiSelect.dart';
import 'package:testapp/widgets/sideBarWid.dart';
import 'package:testapp/widgets/sideQuesWid.dart';

class TopDashboardWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              Image(
                image: AssetImage(
                  'assets/images/cclogo01.png',
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              // GestureDetector(
              //   onTap: () {},
              //   child: Text(
              //     'ICDB',
              //     style: GoogleFonts.lato(
              //       fontSize: 50.0,
              //       fontWeight: FontWeight.w300,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              SizedBox(
                width: 81.0,
              ),
              Container(
                height: 100.0,
                width: 3.0,
                color: Color(0xFF2E3037),
              ),
              SizedBox(
                width: 25.0,
              ),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Home',
                    style: GoogleFonts.lato(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Blogs',
                  style: GoogleFonts.lato(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 25.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'About',
                  style: GoogleFonts.lato(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 25.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Contact',
                  style: GoogleFonts.lato(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
              ),
              Container(
                height: 40.0,
                width: 300.0,
                child: TextFormField(
                  cursorHeight: 20.0,
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Type Search Words',
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
