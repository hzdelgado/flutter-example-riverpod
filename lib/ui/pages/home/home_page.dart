import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            child: Container()));
  }
}