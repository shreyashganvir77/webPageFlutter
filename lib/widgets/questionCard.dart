import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
      child: Container(
        height: 250.0,
        width: 750.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Asked: March 21, 2021',
                    style: GoogleFonts.roboto(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    'In:  ',
                    style: GoogleFonts.roboto(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Career, Placements',
                    style: GoogleFonts.roboto(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              Text(
                'Is Five too young yo let my kid watch the walking dead?',
                style: GoogleFonts.roboto(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E3037),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Text(
                "After experience with my own cousin, I would say that 5 is too young. Once, I showed a clip to my 6 year old cousin on the internet. I thought it was absoulutely hilarious, bu he started to cry and he did't want to sleep alone that night.",
                style: GoogleFonts.roboto(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 65.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 30.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color(0xFFDEDFE0), width: 2.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.comment,
                            color: Color(0xFF272930),
                          ),
                          Text(
                            '14 Answers',
                            style: GoogleFonts.roboto(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF94979B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                      width: 100.0,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFF272930),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Answer',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
