import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? hidden;
  const PasswordField({super.key, this.controller, this.hidden});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        controller: controller,
        style: const TextStyle(
             color: Colors.black87),
        decoration: InputDecoration(
            hintText: "Contraseña",
            hintStyle: TextStyle(
            fontWeight: FontWeight.bold, color: ThemeColors.colorSecondary),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: ThemeColors.colorSecondary)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ThemeColors.colorPrimary))),
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Ingrese su contraseña';
          }
          if (value.length < 6) return "La contraseña es corta";
        },
        obscureText: hidden ?? false,
      )
    ]);
  }
}
