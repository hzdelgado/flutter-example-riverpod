import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/splash/widgets/background_image.dart';
import 'package:flutter_example_riverpod/ui/pages/splash/widgets/front_image.dart';
import 'package:flutter_example_riverpod/ui/pages/splash/widgets/custom_shape/custom_shape.dart';
import 'package:flutter_example_riverpod/ui/pages/splash/widgets/welcome_area.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';
@RoutePage()   
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.colorSecondary,
        body: Stack(
          children: [
            const Positioned(bottom: 0, child: BackgroundImage()),
            const Positioned(bottom: 0, child: FrontImage()),
            const CustomShape(),
            Positioned(
                top: MediaQuery.sizeOf(context).height / 6,
                child: const WelcomeArea()),
          ],
        ));
  }
}
