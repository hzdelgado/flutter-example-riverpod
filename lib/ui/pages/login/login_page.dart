import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

@RoutePage()   
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ThemeColors.colorSecondary,);
  }
}