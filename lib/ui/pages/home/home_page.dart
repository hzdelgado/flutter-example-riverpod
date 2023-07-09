import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/home/widgets/bottom_navbar/bottom_navbar.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.colorSecondary,
      body: const AutoRouter(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
