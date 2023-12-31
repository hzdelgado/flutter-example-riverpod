import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/domain/providers/auth_provider.dart';
import 'package:flutter_example_riverpod/ui/icons/appdoptame_app_icons.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
import 'package:flutter_example_riverpod/ui/theme/font_size.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailCtr;
  final TextEditingController passCltr;
  final WidgetRef ref;
  const LoginButton(this.formKey, this.emailCtr, this.passCltr, this.ref,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          if (formKey.currentState != null &&
              formKey.currentState!.validate()) {
            ref.read(authProvider.notifier).loginUser(emailCtr.text.trim(), passCltr.text.trim());
          }
        },
        icon: Icon(
          AppdoptameApp.paw,
          color: ThemeColors.colorPrimary,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        label: Text(
          "Ingresar",
          style: TextStyle(
              color: ThemeColors.colorPrimary,
              fontSize: ThemeFontSize.fontSizeSm,
              fontWeight: FontWeight.w700),
        ));
  }
}
