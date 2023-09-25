
import 'package:flutter/material.dart';

class CommonService{
 static alertDelete(VoidCallback onPressedFn,BuildContext context){
   return showDialog<String>(
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
              onPressed:() { 
                onPressedFn(); 
                Navigator.pop(context, 'OK');
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
  }
}