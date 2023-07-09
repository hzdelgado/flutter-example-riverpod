import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/theme/colors.dart';

import '../../../icons/appdoptame_app_icons.dart';

class GenderIcon extends StatelessWidget {
  final int gender;
  const GenderIcon(this.gender, {super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(gender == 1 ? AppdoptameApp.male : AppdoptameApp.female,
        color: gender == 1
            ? ThemeColors.colorPrimary
            : ThemeColors.themePink);
  }
}
