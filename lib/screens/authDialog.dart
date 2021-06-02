import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/desktopView.dart';
import 'package:testapp/util/authentication.dart';
import 'package:provider/provider.dart';

class AuthDialog extends StatefulWidget {
  @override
  _AuthDialogState createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      // ...
      insetPadding: EdgeInsets.symmetric(horizontal: 400.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/images/newLogo.png'),
                  ),
                ),
                // Email Address TextField
                TextFormField(
                  onChanged: (val) {
                    email = val.trim();
                  },
                  style: GoogleFonts.roboto(
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                  cursorHeight: 22.0,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.grey),
                    ),
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: Colors.black,
                    ),
                    hintText: 'Enter Your E-mail',
                    hintStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                // Password TextField,
                TextFormField(
                  onChanged: (val) {
                    password = val.trim();
                  },
                  style: GoogleFonts.roboto(
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                  cursorHeight: 22.0,
                  cursorColor: Colors.black,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.grey),
                    ),
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 200.0,
                        child: MaterialButton(
                          elevation: 2.0,
                          color: Colors.blueGrey,
                          onPressed: () async {
                            dynamic result = await context
                                .read<AuthService>()
                                .signIn(email, password);
                            if (result == "Signed In Successfully") {
                              print('Signed In');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DesktopView(),
                                ),
                              );
                            } else {
                              print("Error");
                            }
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 200.0,
                        color: Colors.blueGrey,
                        child: MaterialButton(
                          elevation: 2.0,
                          onPressed: () async {
                            dynamic result = await context
                                .read<AuthService>()
                                .signUp(email, password);
                            if (result == "Signed In Successfully") {
                              print('Signed In');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DesktopView(),
                                ),
                              );
                            } else {
                              print("Error");
                            }
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
