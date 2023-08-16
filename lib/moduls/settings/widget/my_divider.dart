import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Divider(
      color: theme.primaryColor,
      indent: 50,
      endIndent: 50,
      thickness: 2,
      height: 0,
    );
  }
}
