import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final void Function()? handler;

  const AdaptiveFlatButton(
      {Key? key, required this.text, required this.handler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: handler)
        : TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).primaryColor,
            ),
            onPressed: handler,
            child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
          );
  }
}
