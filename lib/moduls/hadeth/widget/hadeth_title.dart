import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadethTitle extends StatelessWidget {
  const HadethTitle({super.key});

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
            AppLocalizations.of(context)!.hadeths,
            style:theme.textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
