import 'package:flutter/material.dart';
import 'package:islami_app/models/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'custom_title.dart';

class RowInBottomSheetLang extends StatelessWidget {
  const RowInBottomSheetLang({super.key, required this.title, required this.lang});
  final String title;
  final String lang;
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<MyProvider>(context);
    var theme = Theme.of(context);
    return Container(
                     margin:const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: theme.primaryColor),
                borderRadius: BorderRadius.circular(24),
                color: provider.language==lang?Colors.blue.shade200 : Colors.white,
              ),
      child: Padding(
        padding: const EdgeInsets.all(20),
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
