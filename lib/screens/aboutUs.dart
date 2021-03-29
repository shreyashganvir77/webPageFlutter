import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.roboto(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        backwardsCompatibility: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "This is a platform which aims at building a bridge between the curious mind full of questions, seeking for answers, and the experienced wise willing to guide. Our objective is to create a conscious environment for individuals to make the right decisions and grab the opportunities by making them aware of the surroundings.\n\nSome queries are rudimentary but others are debatable, we talk over both to extract positive and meaningful solutions to sort out the tangled mind.\n\nSo, if you are serious and curious for the precious years of your life or proficient enough to guide others and recognize the importance of this community, come on in … we are glad to have you.",
            style: GoogleFonts.roboto(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
              color: Colors.black54,
              letterSpacing: .6,
              height: 1.0,
            ),
            softWrap: true,
          ),
        ),
      ),
    );
  }
}
