import 'package:flutter/material.dart';
import 'package:islami_app/models/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'my_divider.dart';
import 'row_in_bottom_sheet_lang.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetBodyLang extends StatelessWidget {
  const BottomSheetBodyLang({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return  Padding(
      padding:const  EdgeInsets.only(bottom: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: (){
              provider.changeLanguage("ar");
                Navigator.pop(context);

            },
            child: RowInBottomSheetLang(title: AppLocalizations.of(context)!.arabic,lang: "ar",)),
         const  MyDivider(),
          InkWell(
            onTap: (){
            provider.changeLanguage("en");
            Navigator.pop(context);
         
            },
            child: RowInBottomSheetLang(title: AppLocalizations.of(context)!.english, lang: "en",))
        ],
      ),
    );
  }
}
