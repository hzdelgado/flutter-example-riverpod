import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
import 'package:flutter_example_riverpod/ui/utils/validator_extension.dart';

class EmailField extends StatelessWidget {
  final TextEditingController? controller;
  const EmailField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
             color: Colors.black87),
      decoration: InputDecoration(
          hintText: "Correo Electrónico",
          hintStyle: TextStyle(
              fontWeight: FontWeight.bold, color: ThemeColors.colorSecondary),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColors.colorSecondary)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColors.colorPrimary))),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Ingrese su correo';
        }
        if (!value.isValidEmail()) return "Email inválido";
      },
    );
  }
}
