import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

class NavBarOption extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  const NavBarOption({super.key, required this.onPressed, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: ThemeColors.colorPrimary,
              size: 26,
            ),
          ),
          Text(label, style: TextStyle(color: ThemeColors.colorPrimary, fontSize: 10),)
    ],);
  }
}