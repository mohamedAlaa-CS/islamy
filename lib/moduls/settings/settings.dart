import 'package:flutter/material.dart';
import 'package:islami_app/models/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'widget/bottom_sheet_body_lang.dart';
import 'widget/bottom_sheet_body_mode.dart';
import 'widget/custom_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingsView extends StatelessWidget {
  static const String routeName = 'settings_view';
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(AppLocalizations.of(context)!.language,style:theme.textTheme.titleLarge ),
          CustomContainer(
              text: provider.language == "en" ? "English" : "عربي",
              callback: (context) => const BottomSheetBodyLang()),
Text( AppLocalizations.of(context)!.mode,style:theme.textTheme.titleLarge ),
          CustomContainer(
              text: provider.themeMode == ThemeMode.light? AppLocalizations.of(context)!.light: AppLocalizations.of(context)!.dark,
              callback: (context) => const BottomSheetBodyMode()),
        ],
      ),
    );
  }
}
