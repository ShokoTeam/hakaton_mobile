import 'package:flutter/material.dart';

abstract class UIColors {
  static const main = Color.fromRGBO(243, 243, 243, 1);
  static const background = Color.fromRGBO(255, 255, 255, 1);
  static const brand = Color.fromRGBO(94, 12, 228, 1);
  static const green = Color.fromRGBO(111, 207, 167, 1);
  static const yellow = Color.fromRGBO(251, 223, 131, 1);
  static const red = Color.fromRGBO(250, 133, 126, 1);
  static const pink = Color.fromRGBO(247, 119, 198, 1);
  static const lightBlue = Color.fromRGBO(167, 231, 253, 1);
  static const grey = Color.fromRGBO(9, 30, 66, 0.06);
  static const orange = Color.fromRGBO(254, 222, 200, 1);
}

abstract class Paddings {
  static const double based = 24;
  static const double mini = 16;
}

abstract class Routes {
  static String login = 'auth/login';
  static String register = 'auth/register';
  static String user = 'user';
  static String projectSingle = 'project';
  static String projectsAll = 'project/all';
}

abstract class TStyles {
  static const brandHeading = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: UIColors.brand,
  );

  static const heading = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: Color.fromRGBO(40, 42, 44, 1),
  );

  static const brandTitle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: UIColors.brand,
  );

  static const header = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Color.fromRGBO(40, 42, 44, 1),
  );

  static const title = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Color.fromRGBO(40, 42, 44, 1),
  );

  static const body = TextStyle(
    fontSize: 14,
    color: Color.fromRGBO(40, 42, 44, 1),
    height: 1.4,
  );
}
