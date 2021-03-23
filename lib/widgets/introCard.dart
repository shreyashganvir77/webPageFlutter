import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroCard extends StatefulWidget {
  const IntroCard({
    Key key,
  }) : super(key: key);

  @override
  _IntroCardState createState() => _IntroCardState();
}

class _IntroCardState extends State<IntroCard> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 3.0,
        child: Container(
          color: Color(0xFFF2F2F2),
          height: 155.0,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "ICDB is a platform to find and share the answers to all questions in your mind \nafter choosing NIT Raipur. Join them, it will only take 10 seconds.",
                        style: GoogleFonts.roboto(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 35.0,
                        width: 100.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation:
                                MaterialStateProperty.all(double.parse('2.0')),
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xFF0052DE),
                            ),
                          ),
                          child: Text(
                            'Join',
                            style: GoogleFonts.roboto(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Here's How it works: ",
                          style: GoogleFonts.roboto(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 72.0),
                          child: Icon(
                            FontAwesomeIcons.plusSquare,
                            color: Colors.green,
                            size: 28.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Anybody can add a Question\n                or a Blog",
                          style: GoogleFonts.roboto(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "                 ",
                          style: GoogleFonts.roboto(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 52.0),
                          child: Icon(
                            FontAwesomeIcons.solidThumbsUp,
                            color: Color(0xFFE59547),
                            size: 28.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Community upvotes the\n       Useful Questions",
                          style: GoogleFonts.roboto(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "                 ",
                          style: GoogleFonts.roboto(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 82.0),
                          child: Icon(
                            Icons.trending_up_sharp,
                            color: Color(0xFF3C7DC0),
                            size: 28.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Most Answered rise to the top",
                          style: GoogleFonts.roboto(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
