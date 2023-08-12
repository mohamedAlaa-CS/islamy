import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

import 'widget/hadeth_name.dart';
import 'widget/hadeth_title.dart';

class HadethView extends StatefulWidget {
  static const String routeName = 'hadeth_view';
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  final String text = '';
  List<String> allHadethList = [];
  List<String> hadethTitle = [];
  List<String> hadethContent = [];

  @override
  Widget build(BuildContext context) {
        var mediaQuery = MediaQuery.of(context).size;

    if (hadethTitle.isEmpty) readFile();
    return Column(
      children: [
        Lottie.asset('assets/animated/animation_ll7bi7de.json',height: mediaQuery.height/4.3,),
        const HadethTitle(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => HadethName(
                hadethName: hadethTitle[index],
                hadethTitle: hadethTitle[index],
                hadthContent: hadethContent[index]),
            itemCount: hadethTitle.length,
          ),
        ),
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString('assets/files/ahadeth.txt');
    // print(text);
    allHadethList = text.split('#');
    // print(hadethList);

    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadthContent = allHadethList[i].trim();
      int indexFirst = singleHadthContent.indexOf('\n');
      String title = singleHadthContent.substring(0, indexFirst);
      hadethTitle.add(title);
      String content = singleHadthContent.substring(indexFirst);
      hadethContent.add(content);
      setState(() {});
      print(hadethContent);
      print('------------------------------------------------------');
      // hadethList.indexOf('\n');
    }
  }
}
