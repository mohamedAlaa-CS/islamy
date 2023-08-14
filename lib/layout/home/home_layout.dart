import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/hadeth_view.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';
import 'package:islami_app/moduls/radio/radio_view.dart';
import 'package:islami_app/moduls/sebha/sebha_view.dart';
import 'package:islami_app/moduls/settings/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class HomeLayout extends StatefulWidget {
  static const String routeName = 'home_layout';

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screenWidget = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background_light.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: screenWidget[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items:  [
              BottomNavigationBarItem(
                  icon:const ImageIcon(AssetImage('assets/images/ic_quran.png')),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  icon:const ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                  label: AppLocalizations.of(context)!.hadeth),
              BottomNavigationBarItem(
                  icon:const ImageIcon(
                      AssetImage(
                        'assets/images/ic_sebha.png',
                      ),
                      size: 30),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage('assets/images/ic_radio.png')),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.settings), label: AppLocalizations.of(context)!.setting),
            ]),
      ),
    );
  }
}
