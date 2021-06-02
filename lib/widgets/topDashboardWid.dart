import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/authDialog.dart';

class TopDashboardWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0.0, left: 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 75.0,
        decoration: BoxDecoration(
          color: Color(0xFF6E5484),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0)),
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              // Logo Image.
              Image(
                image: AssetImage(
                  'assets/images/ccSmallLogo.png',
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              SizedBox(
                width: 81.0,
              ),
              // Black bar separation.
              Container(
                height: 100.0,
                width: 3.0,
                color: Color(0xFF2E3037),
              ),
              SizedBox(
                width: 25.0,
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Blogs Button.
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
                          // About Us Button.
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
                          // Contact Us Button.
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
                        ],
                      ),
                      Row(
                        children: [
                          (MediaQuery.of(context).size.width > 1060)
                              ? SearchBar()
                              : IconButton(
                                  icon: Icon(
                                    Icons.search_rounded,
                                    color: Colors.white,
                                    size: 25.0,
                                  ),
                                  onPressed: () {},
                                ),
                          SizedBox(
                            width: 20.0,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AuthDialog();
                                  });
                            },
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.lato(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                        ],
                      ),
                      // Search Bar or Icon as the screen width.
                    ],
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
