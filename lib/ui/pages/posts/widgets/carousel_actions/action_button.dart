import 'package:flutter/material.dart';
import '../../../../icons/appdoptame_app_icons.dart';

class ActionButton extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  const ActionButton(
      {required this.backgroundColor,
      required this.iconColor,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          width: 70,
          height: 70,
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
          child: Icon(
            icon,
            color: iconColor,
            size: 25,
          ),
        ));
  }
}
