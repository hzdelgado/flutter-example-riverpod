import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height/2,
      child: const Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
      children: [],
    ),));
  }
}