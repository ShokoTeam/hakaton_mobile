import 'package:flutter/material.dart';

abstract class TStyles {
  static const title = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Color.fromRGBO(40, 42, 44, 1),
  );

  static const body = TextStyle(
    fontSize: 14,
    height: 1.3,
    color: Color.fromRGBO(40, 42, 44, 1),
  );
}
