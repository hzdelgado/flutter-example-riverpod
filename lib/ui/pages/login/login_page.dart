import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/login/widgets/custom_shape/custom_shape.dart';
import 'package:flutter_example_riverpod/ui/pages/login/widgets/login_card.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [const CustomShape(), LoginCard()],
      ),
    );
  }
}
