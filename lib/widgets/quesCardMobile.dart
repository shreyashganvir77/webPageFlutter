import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/widgets/answerScreen.dart';

class QuesCardMobile extends StatefulWidget {
  final int upVote;
  final String question;
  final String answer;
  final int noOfAnswers;
  final String date;
  QuesCardMobile(
      {this.answer, this.date, this.noOfAnswers, this.question, this.upVote});
  @override
  _QuesCardMobileState createState() => _QuesCardMobileState(
      answer: answer,
      date: date,
      noOfAnswers: noOfAnswers,
      question: question,
      upVote: upVote);
}

class _QuesCardMobileState extends State<QuesCardMobile> {
  _QuesCardMobileState(
      {this.answer, this.date, this.noOfAnswers, this.question, this.upVote});
  int upVote = 0;
  String question = '';
  String answer = '';
  int noOfAnswers = 0;
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 20.0),
          child: Row(
            children: [
              // Upvote Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                      width: 30.0,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              upVote++;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xFFFFFFFF),
                            ),
                          ),
                          //color: Color(0xFFFFFFFF),
                          child: Icon(
                            Icons.arrow_upward_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      (upVote.toString() == ''
                          ? 0.toString()
                          : upVote.toString()),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 92.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Uppper part including date and tags
                    Row(
                      children: [
                        Text(
                          'Asked: ' + (date == null ? "" : date),
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
                    // Main Question
                    Text(
                      question == null ? 'Unable to ftech question' : question,
                      style: GoogleFonts.roboto(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E3037),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    // Answer to question
                    Text(
                      answer == null ? "Unable to fetch answer" : answer,
                      style: GoogleFonts.roboto(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    // Bottom part including answers and add your answer button
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Container(
                        height: 65.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // No of answers section
                            Container(
                              height: 30.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xFFDEDFE0), width: 2.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.comment,
                                    color: Color(0xFF272930),
                                  ),
                                  Text(
                                    (noOfAnswers == null
                                            ? '?'
                                            : noOfAnswers.toString()) +
                                        ' Answers',
                                    style: GoogleFonts.roboto(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF94979B),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Add Your answer button
                            SizedBox(
                              height: 30.0,
                              width: 100.0,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF272930),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AnswerMobile(),
                                    ),
                                  );
                                },
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
