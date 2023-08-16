import 'package:flutter/material.dart';
import 'package:islami_app/models/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'custom_title.dart';

class RowInBottomSheetMode extends StatelessWidget {
  const RowInBottomSheetMode({super.key, required this.title, required this.themeMode});
  final String title;
  final ThemeMode themeMode ;
  @override
  Widget build(BuildContext context) {
   var provider =Provider.of<MyProvider>(context);
   var theme = Theme.of(context);
    return Container(
                   margin:const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: theme.primaryColor),
              borderRadius: BorderRadius.circular(24),
              color: provider.themeMode==themeMode?Colors.blue.shade200 : Colors.white,
            ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CustomTitle(title: title),
            const Spacer(),
            const Icon(Icons.done)
          ],
        ),
      ),
    );
  }
}
