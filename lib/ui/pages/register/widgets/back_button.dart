import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      elevation: 0,
      backgroundColor: Colors.white,
        onPressed: () => context.router.pop(),
        child:  Icon(
          Icons.arrow_back_sharp,
          color: ThemeColors.colorPrimary,
          size: 35,
        ));
  }
}
