import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VakinhaTextformfield extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChange;

  const VakinhaTextformfield({
    Key? key,
    required this.label,
    this.controller,
    this.validator,
    this.onChange,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChange,
      cursorColor: context.theme.primaryColor,
      decoration: InputDecoration(
        isDense: true,
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black),
        errorStyle: const TextStyle(color: Colors.redAccent),
        enabledBorder: border,
        focusedBorder: border,
        border: border,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}

final border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(23),
  borderSide: BorderSide(color: Colors.grey[400]!),
);
