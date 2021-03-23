import 'package:flutter/material.dart';
import 'package:testapp/util/tags.dart';
import 'package:testapp/widgets/introCard.dart';
import 'package:testapp/widgets/middlePageView.dart';
import 'package:testapp/widgets/multiSelect.dart';
import 'package:testapp/widgets/sideBarWid.dart';
import 'package:testapp/widgets/sideQuesWid.dart';
import 'package:testapp/widgets/topDashboardWid.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TopDashboardWid(),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: IntroCard(),
          ),
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
