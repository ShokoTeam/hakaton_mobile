import 'package:flutter/material.dart';

abstract class UIColors {
  static const main = Color.fromRGBO(243, 243, 243, 1);
  static const background = Color.fromRGBO(255, 255, 255, 1);
}

abstract class Paddings {
  static const double based = 24;
}

abstract class Routes {
  static String login = 'auth/login';
  static String register = 'auth/register';
  static String user = 'user';
  static String projectSingle = 'project';
  static String projectsAll = 'project/all';
}

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
