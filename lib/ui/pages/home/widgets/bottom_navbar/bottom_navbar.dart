import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/icons/appdoptame_app_icons.dart';
import 'package:flutter_example_riverpod/ui/pages/home/widgets/bottom_navbar/navbar_option.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child:SafeArea(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavBarOption(
            onPressed: () {
              context.router.pushNamed('profile');
            },
            icon: AppdoptameApp.user,
            label: "Perfil"
          ),
          NavBarOption(
            onPressed: () {
              context.router.pushNamed('posts');
            },
            icon: AppdoptameApp.inbox,
            label: "Anuncios"
          ),
          NavBarOption(
            onPressed: () {
              context.router.pushNamed('settings');
            },
            icon: AppdoptameApp.power_settings_new,
            label: "Ajustes"
          ),
        ],
      )),
    );
  }
}
