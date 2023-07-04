import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class LoginHereTapGesture extends StatelessWidget {
  const LoginHereTapGesture({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(text: "Ya estas registrad@? ", 
        style: TextStyle(color: ThemeColors.colorTertiary, fontFamily: 'Poppins'),
        children: [
      TextSpan(
          text: "Ingresa aquí",
          style: TextStyle(fontWeight: FontWeight.w700, color: ThemeColors.colorPrimary),
          recognizer: TapGestureRecognizer()
            ..onTap = () => context.router.pop())
    ]));
  }
}
