import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/icons/appdoptame_app_icons.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
import 'package:flutter_example_riverpod/ui/theme/font_size.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          context.router.pushNamed('/login');
        },
        icon: Icon(AppdoptameApp.paw, color: ThemeColors.colorPrimary, size: 15,),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, shadowColor: Colors.grey),
        label: Text(
          "Empecemos!",
          style: TextStyle(
              fontSize: ThemeFontSize.fontSizeSm, 
              fontWeight: FontWeight.w700,
              color: ThemeColors.colorPrimary),
        ));
  }
}
