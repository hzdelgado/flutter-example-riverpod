import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/icons/appdoptame_app_icons.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
import 'package:flutter_example_riverpod/ui/theme/font_size.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          AppdoptameApp.paw,
          color: ThemeColors.colorSecondary,
        ),
        style: ElevatedButton.styleFrom(backgroundColor: ThemeColors.colorPrimary),
        label: Text(
          "Ingresar",
          style: TextStyle(
              color: ThemeColors.colorSecondary,
              fontSize: ThemeFontSize.fontSizeSm,
              fontWeight: FontWeight.w700),
        ));
  }
}