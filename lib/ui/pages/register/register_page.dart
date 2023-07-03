import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/register/widgets/register_card.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  final GlobalKey cardKey = GlobalKey();

  RegisterPage({super.key});

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
                    Positioned(
                        bottom: 0,
                        child: RegisterCard(
                          key: cardKey,
                        )),
                    Positioned(
                      top: 29,
                      child: Image.asset(
                        "assets/register_image.png",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height/ 3,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  ],
                ))));
  }
}
