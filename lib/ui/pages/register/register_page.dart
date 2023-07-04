import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/register/widgets/back_button.dart';
import 'package:flutter_example_riverpod/ui/pages/register/widgets/custom_shape/custom_shape.dart';
import 'package:flutter_example_riverpod/ui/pages/register/widgets/register_card.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.colorSecondary,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: .3,
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover),
            ),
            child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Stack(
                  children: [
                    const CustomShape(),
                     
                    Positioned(bottom: 0, child: RegisterCard()),
                    Positioned(
                      top: 29,
                      child: Image.asset(
                        "assets/register_image.png",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height / 3,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const Positioned(
                      top: 60,
                      left: 20,
                      child: GoBackButton()
                    ),
                  ],
                ))));
  }
}
