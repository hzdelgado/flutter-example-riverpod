import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/domain/providers/auth_provider.dart';
import 'package:flutter_example_riverpod/domain/providers/state/auth_state.dart';
import 'package:flutter_example_riverpod/ui/pages/register/widgets/login_link.dart';
import 'package:flutter_example_riverpod/ui/pages/register/widgets/register_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/colors.dart';
import '../../login/widgets/email_field.dart';
import '../../login/widgets/password_field.dart';

class RegisterCard extends ConsumerWidget {
  final TextEditingController passCltr = TextEditingController();
  final TextEditingController emailCtlr = TextEditingController();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  RegisterCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      authProvider.select((value) => value),
      ((previous, next) {
        if (next.status == AuthStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(next.exception!.message.toString())));
        } else {
          context.router.pushNamed('/home');
        }
      }),
    );
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
          child: Form(
            key: registerFormKey,
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
                hidden: true,
              ),
              const SizedBox(height: 40),
              SizedBox(
                  width: double.infinity,
                  child: RegisterButton(
                      registerFormKey, emailCtlr, passCltr, ref)),
              const SizedBox(height: 20),
              const Center(child: LoginHereTapGesture())
            ],
          ),)
        ));
  }
}
