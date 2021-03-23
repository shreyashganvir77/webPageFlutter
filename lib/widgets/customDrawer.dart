import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5.0,
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/images/cclogo01.png'),
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
