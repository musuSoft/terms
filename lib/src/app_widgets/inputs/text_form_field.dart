// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const AppTextFormField({
    required this.controller,
    this.hintText,
    this.labelText,
    this.prefix,
    this.prefixixIcon,
    this.prefixText,
    this.suffix,
    this.suffixIcon,
    this.validator,
    this.keyboardType,
    this.autofocus,
    this.onChanged,
    required this.obscureText,
    required this.filled,
    required this.fillColor,
  });
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final Widget? prefix;
  final Widget? prefixixIcon;
  final String? prefixText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool? autofocus;
  final bool obscureText;
  final bool filled;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labelText,
        prefix: prefix,
        prefixIcon: prefixixIcon,
        suffix: suffix,
        suffixIcon: suffixIcon,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
