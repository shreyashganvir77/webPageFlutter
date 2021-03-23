import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/util/tags.dart';
import 'package:testapp/widgets/multiSelect.dart';

class AddQuestionMobile extends StatelessWidget {
  final List<String> dialogResult = [];
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
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Close',
                        style: GoogleFonts.roboto(
                            fontSize: 18.0, color: Colors.blueAccent),
                      ),
                    ),
                  ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 1.0,
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Text(
                  'Ask Your Question: ',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                height: 6 * 24.0,
                child: TextField(
                  maxLines: 6,
                  cursorHeight: 19.0,
                  cursorColor: Colors.grey,
                  style: GoogleFonts.roboto(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Your Question",
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
