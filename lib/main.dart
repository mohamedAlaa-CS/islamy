import 'package:flutter/material.dart';
import 'package:islami_app/core/style/app_them.dart';
import 'package:islami_app/layout/home/home_layout.dart';
import 'package:islami_app/moduls/hadeth/hadeth_detils.dart';
import 'package:islami_app/moduls/quran/sura_detils.dart';
import 'package:islami_app/moduls/splash/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const[
        AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  locale: Locale('ar'),
  supportedLocales:const [
    Locale('en'), // English
    Locale('ar'), // Spanish
  ],
      
      theme: AppTheme.lightTheme,

      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        HomeLayout.routeName: (context) => HomeLayout(),
        SuraDetils.routeName:(context) => SuraDetils(),
        HadethDetils.routeName:(context) => HadethDetils()


      },
    );
  }
}
