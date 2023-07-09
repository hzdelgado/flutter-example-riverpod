import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final double? buttonSize;
  final double? iconSize;

  final IconData icon;
  const ActionButton(
      {required this.backgroundColor,
      required this.iconColor,
      required this.icon,
      required this.onPressed,
      this.buttonSize,
      this.iconSize,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: buttonSize ?? 70,
        height: buttonSize ?? 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          boxShadow: const [
            BoxShadow(
              offset: Offset(3.0, 3.0),
              blurRadius: 6.0,
              color: Color.fromARGB(95, 139, 137, 137),
            ),
          ],
        ),
        child: Material(
            color: Colors.transparent,
            child: InkWell(
              highlightColor: backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              onTap: onPressed,
              child: Icon(
                icon,
                color: iconColor,
                size: iconSize ?? 25,
              ),
            )));
  }
}
