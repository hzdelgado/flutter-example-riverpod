import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/register/widgets/register_button.dart';

import '../../../theme/colors.dart';
import '../../login/widgets/email_field.dart';
import '../../login/widgets/password_field.dart';

class RegisterCard extends StatelessWidget {
  final TextEditingController passCltr = TextEditingController();
  final TextEditingController emailCtlr = TextEditingController();
  RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 2 / 3,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 6.0,
                  color: Colors.black38,
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Regístrate :)",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: ThemeColors.colorTertiary),
              ),
              const SizedBox(height: 20),
              EmailField(
                controller: emailCtlr,
              ),
              const SizedBox(height: 20),
              PasswordField(
                controller: passCltr,
              ),
              const SizedBox(height: 40),
              const SizedBox(
                width: double.infinity,
                child: RegisterButton()),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}