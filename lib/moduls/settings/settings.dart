import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  static const String routeName ='settings_view'; 
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'settings',
      style: TextStyle(fontSize: 30),
    ));
  }
}