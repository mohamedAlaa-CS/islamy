import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraTitle extends StatelessWidget {
//
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 60, right: 60, bottom: 10),
          width: MediaQuery.of(context).size.width,
          height: 50,
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60), bottomLeft: Radius.circular(60)),
            color: theme.canvasColor.withOpacity(0.85),
          ),
          child:  Text(
            AppLocalizations.of(context)!.suraName,
            style: theme.textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
