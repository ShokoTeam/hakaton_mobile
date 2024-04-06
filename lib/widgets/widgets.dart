import 'package:flutter/material.dart';
import 'package:hakaton_teamspace/core/constants.dart';
import 'package:hakaton_teamspace/core/extensions.dart';

class UISpacer extends StatelessWidget {
  const UISpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromRGBO(229, 229, 229, 1),
      height: 4,
    );
  }
}

class UITextField extends StatelessWidget {
  const UITextField({
    super.key,
    required this.controller,
    this.hintText,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final String? hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        prefixIcon: prefixIcon,
      ),
    );
  }
}

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

class UIChip extends StatelessWidget {
  const UIChip({super.key, required this.label, required this.color});

  static UIChip category(String? label) {
    final text = label.asCategory();
    final color = switch (label) {
      'hotfix' => UIColors.red,
      'changes' => UIColors.yellow,
      'new' => UIColors.lightBlue,
      _ => UIColors.background,
    };
    return UIChip(label: text, color: color);
  }

  static UIChip step(String? label) {
    final text = label.asStep();
    final color = switch (label) {
      'Analys' => UIColors.green,
      'Coding' => UIColors.pink,
      // 'Testing' => UIColors.,
      // 'Acceptance' => UIColors.,
      // 'Release' => UIColors.,
      _ => UIColors.background,
    };
    return UIChip(label: text, color: color);
  }

  static UIChip priority(String? label) {
    final text = label.asPriority();
    final color = switch (label) {
      'low' => UIColors.grey,
      'middle' => UIColors.orange,
      'high' => UIColors.red,
      _ => UIColors.background,
    };
    return UIChip(label: text, color: color);
  }

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
      child: Text(label),
    );
  }
}
