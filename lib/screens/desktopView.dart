import 'package:flutter/material.dart';
import 'package:testapp/util/tags.dart';
import 'package:testapp/widgets/introCard.dart';
import 'package:testapp/widgets/middlePageView.dart';
import 'package:testapp/widgets/multiSelect.dart';
import 'package:testapp/widgets/sideBarWid.dart';
import 'package:testapp/widgets/sideQuesWid.dart';
import 'package:testapp/widgets/topDashboardWid.dart';

// color = 0xFFF2F2F2

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // The top NavBar
          TopDashboardWid(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // The Right side navbar
                        SideBar(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: 200.0,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: tags.length,
                            itemBuilder: (context, index) {
                              return MultiSelect(
                                itemAns: tagsAns[index],
                                items: tags[index],
                                index: index,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 60.0,
                    // ),
                    MiddlePageView(),
                    // SizedBox(
                    //   width: 20.0,
                    // ),
                    Visibility(
                      visible: (MediaQuery.of(context).size.width > 1310)
                          ? true
                          : false,
                      child: RightSideBar(),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
