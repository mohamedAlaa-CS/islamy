import 'package:flutter/material.dart';
import 'package:islami_app/models/provider/my_provider.dart';
import 'package:provider/provider.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.text, required this.callback});
  final String text;
  final callback;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider =Provider.of<MyProvider>(context);

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(context: context, builder: callback);
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: theme.canvasColor, width: 2),
        ),
        child: Row(children: [
          Text(text,
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const Spacer(),
           Icon(
            Icons.arrow_drop_down,
             color:provider.themeMode ==ThemeMode.light? Colors.black: theme.canvasColor ,

          )
        ]),
      ),
    );
  }
}
