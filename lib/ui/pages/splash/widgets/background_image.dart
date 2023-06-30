import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width),
        decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: .3,
              image: AssetImage("assets/background.png"), fit: BoxFit.cover),
        ),
        child: const SizedBox());
  }
}