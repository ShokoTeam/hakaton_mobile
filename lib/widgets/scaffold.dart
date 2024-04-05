import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/core/constants.dart';

class UIScaffold extends StatelessWidget {
  const UIScaffold({super.key, this.body, this.appBar});

  final Widget? body;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      appBar: appBar,
      body: body,
    );
  }
}
