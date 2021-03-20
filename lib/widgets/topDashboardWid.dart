import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopDashboardWid extends StatelessWidget {
  const TopDashboardWid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75.0,
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
                    fontWeight: FontWeight.w300,
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
                    fontWeight: FontWeight.w300,
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
                    fontWeight: FontWeight.w300,
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
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
