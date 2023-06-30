import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/splash/widgets/custom_shape/white_clipper.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipPath(
      clipper: WhiteClipper(),
      child: Container(
        color: ThemeColors.colorPrimary.withOpacity(.95),
      ),
    );
  }
}