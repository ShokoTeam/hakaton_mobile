import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/core/constants.dart';

class UIContainer extends StatelessWidget {
  const UIContainer({super.key, this.width, this.height, this.child});

  final Widget? child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(Paddings.mini),
      decoration: const BoxDecoration(
        color: UIColors.main,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: child,
    );
  }
}
