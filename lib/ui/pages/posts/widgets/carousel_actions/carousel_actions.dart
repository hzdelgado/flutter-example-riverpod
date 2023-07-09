import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/icons/appdoptame_app_icons.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

import 'action_button.dart';

class CarouselActions extends StatelessWidget {
  final CarouselController carouselController;
  const CarouselActions({super.key, required this.carouselController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 2 / 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionButton(
              onPressed: () {
                carouselController.nextPage();
              },
              backgroundColor: ThemeColors.colorSecondary,
              iconColor: Colors.grey,
              icon: AppdoptameApp.arrow_right),
          ActionButton(
            onPressed: () {},
            backgroundColor: ThemeColors.themePinkAlt,
            iconColor: Colors.white,
            icon: AppdoptameApp.heart_1,
            buttonSize: 80,
            iconSize: 30,
          ),
          ActionButton(
              onPressed: () {},
              backgroundColor: ThemeColors.colorTertiary,
              iconColor: Colors.white,
              icon: AppdoptameApp.menu),
        ],
      ),
    );
  }
}
