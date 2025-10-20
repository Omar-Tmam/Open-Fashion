import 'package:flutter/material.dart';
import 'package:open_fashion/Core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.bodyLarge(context),
      controller: controller,
      validator: (v) {
        if (v == null || v.trim().isEmpty) {
          return "Please fill this field";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: label,
        hintStyle: AppStyles.bodyLarge(context),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
