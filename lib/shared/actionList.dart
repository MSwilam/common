import 'package:flutter/material.dart';

var items = [
  'Action',
  'Details',
  'Update',
  'Delete',
];

class ActionList extends StatelessWidget {
  ActionList(
      {Key? key,
      required this.onUpdateFnc,
      required this.onDetailsFnc,
      required this.onDeleteFnc})
      : super(key: key);
  final VoidCallback onUpdateFnc;
  final VoidCallback onDetailsFnc;
  final VoidCallback onDeleteFnc;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton(
          // Initial Value
          value: 'Action',

          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),

          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            if (newValue == 'Details') {
              onDetailsFnc();
            } else if (newValue == 'Update') {
              onUpdateFnc();
            } else if (newValue == 'Delete') {
              onDeleteFnc();
            }
          },
        ),
      ],
    );
  }
}


