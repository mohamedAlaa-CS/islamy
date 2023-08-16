import 'package:flutter/material.dart';
import 'package:islami_app/moduls/quran/sura_detils.dart';

class SouraNameWidget extends StatelessWidget {

  final String suraName;
  final int suraNumber;

  const SouraNameWidget({
    super.key,
    required this.suraName,
    required this.suraNumber,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, SuraDetils.routeName,arguments: SuraData(suraName:suraName ,suraNumber: suraNumber+1));
      },
      child: Container(
        padding: const EdgeInsets.all(3),
        margin:const  EdgeInsets.symmetric(horizontal: 8,vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 2.0,
            color: theme.canvasColor.withOpacity(0.7),
          )
        ),
        
        child: Text(
          textAlign: TextAlign.center,
          suraName,
          style: theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}
class SuraData {
  final  String suraName;
  final  int suraNumber;
  
   SuraData({
    required this.suraName,
    required this.suraNumber,
  });
}