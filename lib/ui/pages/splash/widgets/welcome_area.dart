import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/splash/widgets/start_button.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
import 'package:flutter_example_riverpod/ui/theme/font_size.dart';

class WelcomeArea extends StatelessWidget {
  const WelcomeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 35,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Adopta un amigo peludo y se parte\nde la comunidad mas grande de adopción de Perú",
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                color: ThemeColors.colorSecondary,
                fontSize: ThemeFontSize.fontSizeSm,
                fontWeight: FontWeight.w500,
                shadows: const <Shadow>[
                  Shadow(
                    offset: Offset(3.0, 3.0),
                    blurRadius: 6.0,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const StartButton()
          ],
        ));
  }
}
