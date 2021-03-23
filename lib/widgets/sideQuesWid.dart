import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/widgets/customTabBar.dart';

class SideViewQues extends StatelessWidget {
  final String question;
  final String noOfAns;
  const SideViewQues({
    Key key,
    this.question,
    this.noOfAns,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            question,
            style: GoogleFonts.roboto(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF070911),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Icon(
                Icons.comment,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                noOfAns,
                style: GoogleFonts.roboto(
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RightSideBar extends StatelessWidget {
  const RightSideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 2.0, right: 2.0),
          child: Container(
            height: 80.0,
            width: 260.0,
            color: Colors.white,
            child: Center(
              child: SizedBox(
                height: 50.0,
                width: 200.0,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xFF2D6FF7),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Ask Your Question',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: 260.0,
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              CustomTabBar(
                height: 30.0,
                width: 220.0,
                fontSize: 16.0,
                length: 3,
                tabValues: [
                  'Hot',
                  'Recent',
                  'Trending',
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    SideViewQues(
                      noOfAns: '13 Answers',
                      question: 'How to score 9 pointer in first semester?',
                    ),
                    SideViewQues(
                      noOfAns: '9 Answers',
                      question:
                          'How do I get pass through 4 years of Electrical Engineering?',
                    ),
                    SideViewQues(
                      noOfAns: '10 Answers',
                      question: 'How to get a good Internships in second year?',
                    ),
                    SideViewQues(
                      noOfAns: '15 Answers',
                      question:
                          'How to Prepare for Aptitude test for placements?',
                    ),
                    SideViewQues(
                      noOfAns: '5 Answers',
                      question: 'How to get an Off-Campus Job Offer?',
                    ),
                    SideViewQues(
                      noOfAns: '5 Answers',
                      question:
                          'What are the skills required for an SDE profile?',
                    ),
                    SideViewQues(
                      noOfAns: '5 Answers',
                      question: 'Why should I do an internship at a startup?',
                    ),
                    SideViewQues(
                      noOfAns: '5 Answers',
                      question:
                          'Which is the best way for learning data structures and algorithms for internship preparation?',
                    ),
                    SideViewQues(
                      noOfAns: '2 Answers',
                      question:
                          'What are some good college projects on Python?',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
