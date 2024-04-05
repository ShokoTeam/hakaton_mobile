import 'package:flutter/material.dart';

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
