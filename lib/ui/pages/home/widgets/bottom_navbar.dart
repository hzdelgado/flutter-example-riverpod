import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              context.router.pushNamed('profile');
            },
            icon: Icon(
              Icons.home_outlined,
              color: ThemeColors.colorPrimary,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {
              context.router.pushNamed('posts');
            },
            icon: Icon(
              Icons.work_outline_outlined,
              color: ThemeColors.colorPrimary,
              size: 35,
            ),
            highlightColor: ThemeColors.colorPrimary,
          ),
          IconButton(
            onPressed: () {
              context.router.pushNamed('settings');
            },
            color: ThemeColors.colorPrimary,
            icon: Icon(
              Icons.work_outline_outlined,
              color: ThemeColors.colorPrimary,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
