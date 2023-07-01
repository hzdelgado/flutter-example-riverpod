import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/login/widgets/custom_shape/white_clipper.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WhiteClipper(),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          color: ThemeColors.colorSecondary,
          image: const DecorationImage(
              opacity: .3,
              alignment: Alignment.topCenter,
              image: AssetImage("assets/login_background.png"),
              fit: BoxFit.contain),
        ),
      ),
    );
  }
}
