import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testapp/screens/authDialog.dart';
import 'package:testapp/util/responsiveLayout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:testapp/util/authentication.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(auth: FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChange,
          initialData: null,
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CC',
      home: LayoutChanger(),
    );
  }
}

// class Result extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     dynamic user = context.watch<AuthService>().authStateChange;
//     if (user == null) {
//       print('no user');
//       return AuthDialog();
//     } else {
//       print('user is there');
//       print(user);
//       return LayoutChanger();
//     }
//   }
// }
