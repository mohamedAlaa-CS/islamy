import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/home/home_layout.dart';

class SplashView extends StatelessWidget {
  static const String routeName ='splash_view';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
     });
    return Container(
      decoration:const  BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/splash_view.png'),
        fit: BoxFit.fill)
      ),
    );
  }
}