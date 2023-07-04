import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/icons/appdoptame_app_icons.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
import 'package:flutter_example_riverpod/ui/theme/font_size.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          AppdoptameApp.paw,
          color: ThemeColors.colorPrimary,
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,),
        label: Text(
          "Ingresar",
          style: TextStyle(
              color: ThemeColors.colorPrimary,
              fontSize: ThemeFontSize.fontSizeSm,
              fontWeight: FontWeight.w700),
        ));
  }
}
