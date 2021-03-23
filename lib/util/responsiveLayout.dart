import 'package:flutter/material.dart';
import 'package:testapp/screens/desktopView.dart';
import 'package:testapp/screens/mobileView.dart';

class LayoutChanger extends StatelessWidget {
  const LayoutChanger({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        print(constraints.maxWidth);
        return DesktopView();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
        print(constraints.maxWidth);
        return DesktopView();
      } else {
        return MobileView();
      }
    });
  }
}
