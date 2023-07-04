import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/register/widgets/custom_shape/blue_clipper.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BlueClipper(),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        color: ThemeColors.colorPrimary.withOpacity(0.9),
      ),
    );
  }
}
