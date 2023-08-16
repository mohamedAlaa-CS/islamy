import 'package:flutter/material.dart';
import 'package:islami_app/models/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'my_divider.dart';
import 'row_in_bottom_sheet_mode.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BottomSheetBodyMode extends StatelessWidget {
  const BottomSheetBodyMode({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child:  RowInBottomSheetMode(
                title: AppLocalizations.of(context)!.light,
                themeMode: ThemeMode.light,
              )),
         const MyDivider(),
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child:  RowInBottomSheetMode(
                title: AppLocalizations.of(context)!.dark,
                themeMode: ThemeMode.dark,
              ))
        ],
      ),
    );
  }
}
