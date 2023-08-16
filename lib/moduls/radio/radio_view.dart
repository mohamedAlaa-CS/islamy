import 'package:flutter/material.dart';
import 'package:islami_app/models/provider/my_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  static const String routeName = 'radio_view';
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider =Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 40,),
            Image.asset('assets/images/radio_header.png'),
            Text('اذاعة القرآن الكريم ',style: theme.textTheme.bodySmall),
            Image.asset('assets/images/radio_player.png',
              color:provider.themeMode ==ThemeMode.light? Colors.black: theme.canvasColor ,

            ),
             const   SizedBox(height: 40,),
          
          ],
        ),
      ),
    );
  }
}
