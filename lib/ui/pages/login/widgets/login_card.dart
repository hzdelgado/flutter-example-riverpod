import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/login/widgets/email_field.dart';
import 'package:flutter_example_riverpod/ui/pages/login/widgets/password_field.dart';

class LoginCard extends StatelessWidget {
  final TextEditingController passCltr = TextEditingController();
  final TextEditingController emailCtlr = TextEditingController();
  LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 2/3,
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
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            children: [
              
              EmailField(controller: emailCtlr,),
              const SizedBox(height: 20),
              PasswordField(controller: passCltr,)
            ],
          ),
        ));
  }
}
