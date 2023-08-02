import 'package:flutter/material.dart';
import 'package:github_repo_listing_app/style/style.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  String? valueChoose;

  List listItem = [
    'item 1',
    'item 2',
    'item 3',
    'item 4'
  ];




  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text('Select Items'),
      icon: Icon(Icons.keyboard_arrow_down_sharp),
      iconSize: 30,
      // isExpanded: true,
      style: AppStyle.popinsBlackColor10Bold,
      items: listItem.map(
        (valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          );
        },
      ).toList(),
      value: valueChoose,
      underline: SizedBox(),
      onChanged: (value) {
        setState(() {
          valueChoose = value.toString();
        });
      },
    );
  }
}
