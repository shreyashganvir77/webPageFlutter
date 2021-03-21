import 'package:flutter/material.dart';
import 'package:testapp/util/tags.dart';

class MultiSelect extends StatefulWidget {
  final List<String> items;
  final List<bool> itemAns;

  MultiSelect({this.items, this.itemAns});

  @override
  _MultiSelectState createState() =>
      _MultiSelectState(itemAns: itemAns, items: items);
}

class _MultiSelectState extends State<MultiSelect> {
  final List<String> items;
  final List<bool> itemAns;
  _MultiSelectState({this.items, this.itemAns});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
            value: itemAns[index],
            title: Text(
              items[index],
            ),
            onChanged: (val) {
              setState(() {
                if (val) {
                  result.add(
                    items[index],
                  );
                } else {
                  result.remove(
                    items[index],
                  );
                }
                itemAns[index] = val;
              });
            });
      },
    );
  }
}
