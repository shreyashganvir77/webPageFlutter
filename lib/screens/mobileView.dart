import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/notifications.dart';
import 'package:testapp/widgets/answerScreen.dart';
import 'package:testapp/widgets/customDrawer.dart';
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
                for (int i = 0; i < 8; i++) QuesCardMobile(),
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

class QuesCardMobile extends StatelessWidget {
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
              // Upvote Burtton
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30.0,
                  width: 30.0,
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
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
                    // Main Question
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
                    // Answer to question
                    Text(
                      "After experience with my own cousin, I would say that 5 is too young. Once, I showed a clip to my 6 year old cousin on the internet. I thought it was absoulutely hilarious, bu he started to cry and he did't want to sleep alone that night.",
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
