import 'package:common/shared/colors.dart';
import 'package:flutter/material.dart';

class ConfirmDelete extends StatelessWidget {
  const ConfirmDelete({Key? key, required this.onPressedFn}) : super(key: key);

  final VoidCallback onPressedFn;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      iconSize: 25.0,
      color: primaryColor,
      onPressed: () => showDialog<String>(
        barrierLabel: "ss",
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                onPressedFn();
                Navigator.pop(context, 'OK');
              },
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
