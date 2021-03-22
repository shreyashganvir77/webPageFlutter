import 'package:flutter/material.dart';
import 'package:testapp/util/tags.dart';
import 'package:google_fonts/google_fonts.dart';

class MultiSelect extends StatefulWidget {
  final List<String> items;
  final List<bool> itemAns;
  final int index;

  MultiSelect({this.items, this.itemAns, this.index});

  @override
  _MultiSelectState createState() =>
      _MultiSelectState(itemAns: itemAns, items: items, index: index);
}

class _MultiSelectState extends State<MultiSelect> {
  final List<String> items;
  final List<bool> itemAns;
  final int index;
  _MultiSelectState({this.items, this.itemAns, this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            tagNames[index],
            style: GoogleFonts.roboto(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ),
        for (int index = 0; index < items.length; index++)
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: CheckboxListTile(
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
              },
            ),
          ),
      ],
    );
  }
}
