import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/home/home_layout.dart';
import 'package:islami_app/models/provider/my_provider.dart';
import 'package:provider/provider.dart';

class SplashView extends StatelessWidget {
  static const String routeName ='splash_view';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<MyProvider>(context);
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
     });
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(image: AssetImage(provider.themeMode == ThemeMode.light?'assets/images/splash_view.png':'assets/images/splash_dark.png'),
        fit: BoxFit.fill)
      ),
    );
  }
}