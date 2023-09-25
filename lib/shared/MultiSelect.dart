import 'package:flutter/material.dart';


class MultiSelectObj {
  int id;
  String value;
  MultiSelectObj({required this.id,required this.value});
}


class MultiSelect extends StatefulWidget {
  const MultiSelect({super.key, required this.items});
  final List<MultiSelectObj> items;
  @override
  State<MultiSelect> createState() => _MultiSelectState();
}
 final List<MultiSelectObj> _selectedItem = [];
class _MultiSelectState extends State<MultiSelect> {




  @override
  Widget build(BuildContext context) {
   


    void _itemChange(MultiSelectObj itemValue, bool isSelected) {
    
      setState(() {
         if (isSelected) {
        _selectedItem.add(itemValue);
      } else {
        _selectedItem.removeWhere((item) => item.id == itemValue.id);
      }
      });
    }

    void _cancel() {
      Navigator.pop(context);
    }

    void _submit() {
      Navigator.pop(context, _selectedItem);
    }
    return AlertDialog(
      title: const Text('Select Topics'),
      content: SingleChildScrollView(
          child: ListBody(
        children: widget.items
            .map((item) => CheckboxListTile(
                value: _selectedItem.any((element) => element.id == item.id),
                title: Text(item.value),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (isChanged) {
                  _itemChange(item, isChanged!);
                }))
            .toList(),
      )),
      actions: [
        TextButton(onPressed: _cancel, child: const Text('Cancle')),
        ElevatedButton(onPressed: _submit, child: const Text('Submit'))
      ],
    );
  }
}