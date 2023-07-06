import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class RegisterHereTapGesture extends StatelessWidget {
  const RegisterHereTapGesture({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(text: "Eres nuev@? ", 
        style: TextStyle(color: ThemeColors.colorTertiary, fontFamily: 'Poppins'),
        children: [
      TextSpan(
          text: "Registrate aquí",
          style: TextStyle(fontWeight: FontWeight.w700, color: ThemeColors.colorPrimary),
          recognizer: TapGestureRecognizer()
            ..onTap = () => context.router.pushNamed('/register'))
    ]));
  }
}
