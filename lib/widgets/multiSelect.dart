import 'package:flutter/material.dart';

List<String> listItems = [
  'career',
  'accomadation',
  'department',
  'enjoy',
  'canteen',
];
List<String> result = [];
List<bool> selectedItem = [
  false,
  false,
  false,
  false,
  false,
];

class MultiSelect extends StatefulWidget {
  @override
  _MultiSelectState createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
            value: selectedItem[index],
            title: Text(
              listItems[index],
            ),
            onChanged: (val) {
              setState(() {
                if (val) {
                  result.add(
                    listItems[index],
                  );
                } else {
                  result.remove(
                    listItems[index],
                  );
                }
                selectedItem[index] = val;
              });
            });
      },
    );
  }
}
