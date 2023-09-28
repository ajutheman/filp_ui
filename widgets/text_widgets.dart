import 'dart:ffi';

import 'package:flutter/material.dart';

class TextWidgects extends StatelessWidget {
  final String text;
  final double? fontSize;

  const TextWidgects({super.key, required this.text,  this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
          // overflow: TextOverflow.ellipsis,
          style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize??16),

    );
  }
}
