import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationMobile extends StatefulWidget {
  @override
  _NotificationMobileState createState() => _NotificationMobileState();
}

class _NotificationMobileState extends State<NotificationMobile> {
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
                      },
                      child: Text(
                        'Close',
                        style: GoogleFonts.roboto(
                            fontSize: 18.0, color: Colors.blueAccent),
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
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                child: Text(
                  "You don't have any notifications",
                  style: GoogleFonts.roboto(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
