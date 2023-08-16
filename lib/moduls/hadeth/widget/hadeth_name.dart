import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/hadeth/hadeth_detils.dart';

class HadethName extends StatelessWidget {
  final String hadethName;
  final String hadethTitle;
  final String hadthContent; 
  const HadethName({super.key, required this.hadethName, required this.hadethTitle, required this.hadthContent});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, HadethDetils.routeName,arguments: HadethData(hadethTitle, hadthContent));
      },
      child: Container(
                padding: const EdgeInsets.all(3),
          margin:const  EdgeInsets.symmetric(horizontal: 8,vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border:Border.all(color:theme.canvasColor.withOpacity(0.7),
          width: 2 ),
        ),
        child: Text(
          textAlign: TextAlign.center,
          hadethName,
          style: theme.textTheme.titleMedium),
      ),
    );
  }

}
class HadethData
{
  final String title;
  final String content;

  HadethData(this.title, this.content);
}