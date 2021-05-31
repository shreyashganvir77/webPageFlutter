import 'package:flutter/material.dart';
import 'package:testapp/widgets/customTabBar.dart';
import 'package:testapp/widgets/questionCard.dart';

class MiddlePageView extends StatelessWidget {
  const MiddlePageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.0,
        ),
        CustomTabBar(
          height: 80,
          width: 750,
          fontSize: 23.0,
          length: 3,
          tabValues: ['Recent Questions', 'Most Answered', 'Trending'],
        ),
        SizedBox(
          height: 2.0,
        ),
        QuestionCard(),
        SizedBox(
          height: 5.0,
        ),
        QuestionCard(),
        SizedBox(
          height: 5.0,
        ),
        QuestionCard(),
        SizedBox(
          height: 5.0,
        ),
        QuestionCard(),
        SizedBox(
          height: 5.0,
        ),
        QuestionCard(),
        SizedBox(
          height: 5.0,
        ),
        QuestionCard(),
      ],
    );
  }
}
