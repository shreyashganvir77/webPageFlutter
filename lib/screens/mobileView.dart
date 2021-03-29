import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/notifications.dart';
import 'package:testapp/util/questionData.dart';
import 'package:testapp/widgets/answerScreen.dart';
import 'package:testapp/widgets/customDrawer.dart';
import 'package:testapp/widgets/quesCardMobile.dart';
import 'package:testapp/widgets/questionScreen.dart';

class MobileView extends StatefulWidget {
  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  Icon customIcon = Icon(
    Icons.search,
    color: Colors.white,
  );
  Widget searchBar = Text(
    'College Connect',
    style: GoogleFonts.roboto(
      fontSize: 20.0,
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddQuestionMobile(),
              ),
            );
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          actions: [
            //Icon for search button
            IconButton(
              icon: customIcon,
              onPressed: () {
                setState(() {
                  if (this.customIcon.icon == Icons.search) {
                    this.customIcon = Icon(
                      Icons.clear,
                      color: Colors.white,
                    );
                    // Search bar
                    this.searchBar = TextField(
                      style: GoogleFonts.roboto(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      cursorRadius: Radius.zero,
                      cursorHeight: 16.0,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12.0),
                        hintText: 'Search your Question',
                        isDense: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.black26),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.black26),
                        ),
                        fillColor: Colors.white,
                      ),
                    );
                  } else {
                    this.searchBar = Text(
                      'College Connect',
                      style: GoogleFonts.roboto(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    );
                    this.customIcon = Icon(
                      Icons.search,
                      color: Colors.white,
                    );
                  }
                });
              },
            ),
            //Icon for notifications
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationMobile(),
                    ),
                  );
                }),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 1.5,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 58.0),
            tabs: [
              Tab(
                text: 'Hot',
              ),
              Tab(
                text: 'Recent',
              ),
              Tab(
                text: 'Best',
              ),
            ],
          ),
          elevation: 3.0,
          backgroundColor: Colors.black,
          title: searchBar,
        ),
        drawer: CustomDrawer(),
        backgroundColor: Color(0xFFF2F2F2),
        body: TabBarView(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                for (int i = 0; i < questions.length; i++)
                  QuesCardMobile(
                    question: questions[i],
                    answer: answers[i],
                    noOfAnswers: noOfAnswers[i],
                    date: dateAsked[i],
                    upVote: noOfUpVotes[i],
                  ),
              ],
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
