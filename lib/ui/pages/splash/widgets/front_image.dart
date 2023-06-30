import 'package:flutter/material.dart';

class FrontImage extends StatelessWidget {
  const FrontImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
            height: MediaQuery.sizeOf(context).height / 2,
            width: MediaQuery.sizeOf(context).width),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/front_dog.png"), fit: BoxFit.cover),
        ),
        child: const SizedBox());
  }
}
