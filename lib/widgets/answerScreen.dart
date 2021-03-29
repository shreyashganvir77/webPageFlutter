import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/util/tags.dart';
import 'package:testapp/widgets/multiSelect.dart';

class AnswerMobile extends StatefulWidget {
  @override
  _AnswerMobileState createState() => _AnswerMobileState();
}

class _AnswerMobileState extends State<AnswerMobile> {
  final List<String> dialogResult = [];
  bool visible = false;
  String selectedTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Color(0xFFF2F2F2),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Close Blue Button
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        result.clear();
                      },
                      child: Text(
                        'Close',
                        style: GoogleFonts.roboto(
                            fontSize: 18.0, color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  // Submit Red Button
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Submit',
                        style: GoogleFonts.roboto(
                          fontSize: 18.0,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Flat line for decoration
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 1.0,
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                height: 8 * 24.0,
                child: TextField(
                  maxLines: 8,
                  cursorHeight: 19.0,
                  cursorColor: Colors.grey,
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Write your answer...",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Add Tags: ',
                  style: GoogleFonts.roboto(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Wrap(
                children: [
                  for (int i = 0; i < result.length; i++)
                    CustomTagCard(
                      name: result[i],
                      isVisible: true,
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 80.0,
                  height: 25.0,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Select Tags'),
                          content: Container(
                            height: 400.0,
                            width: 300.0,
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                for (int i = 0; i < tags.length; i++)
                                  MultiSelect(
                                    index: i,
                                    itemAns: tagsAns[i],
                                    items: tags[i],
                                  ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                result.clear();
                                Navigator.of(context, rootNavigator: true)
                                    .pop();
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                print(result);
                                setState(
                                  () {
                                    visible = true;
                                  },
                                );
                                Navigator.of(context, rootNavigator: true)
                                    .pop();
                              },
                              child: Text('Apply'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      'Select',
                      style: GoogleFonts.roboto(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
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

class CustomTagCard extends StatefulWidget {
  final bool isVisible;
  final String name;

  CustomTagCard({this.isVisible, this.name});

  @override
  _CustomTagCardState createState() =>
      _CustomTagCardState(name: name, isVisible: isVisible);
}

class _CustomTagCardState extends State<CustomTagCard> {
  bool isVisible;
  final String name;
  _CustomTagCardState({this.isVisible, this.name});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5.0,
          child: Container(
            height: 30.0,
            width: 140.0,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30.0,
                  width: 90.0,
                  child: Center(
                    child: Text(
                      widget.name,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    result.remove(widget.name);
                    setState(() {
                      isVisible = false;
                    });
                  },
                  icon: Icon(
                    Icons.clear,
                    size: 20.0,
                  ),
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
