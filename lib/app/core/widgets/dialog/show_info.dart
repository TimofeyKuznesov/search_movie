import 'package:flutter/material.dart';

Future<bool> showInfo(BuildContext context, data) {
  return showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Info!'),
      content: Text("You are set ${data.toString()}"),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Ok'),
        )
      ],
    ),
  ).then((value) => value ?? false);
}
