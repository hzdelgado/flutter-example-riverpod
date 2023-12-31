import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_riverpod/ui/pages/login/widgets/login_card.dart';
import '../../theme/colors.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: ThemeColors.colorPrimary,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: .05,
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover),
            ),
            child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/logo_white.png',
                      width: MediaQuery.sizeOf(context).width * 2 / 3,
                    ),
                    LoginCard(),
                  ],
                ))));
  }
}
