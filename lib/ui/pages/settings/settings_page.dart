import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage() 
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}
