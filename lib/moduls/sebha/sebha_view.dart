import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaView extends StatefulWidget {
  static const String routeName = 'sebha_view';

  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int number = 0;
  int numberList = 0;
  String text = 'سبحان اللّة';
  List<String> tasbeh = ['سبحان اللّة', 'الحمد للّة', 'اللّة اكبر'];
  double angle = 0.0;
  @override
  Widget build(BuildContext context) {
    var mediaQuriy = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: mediaQuriy.height / 7),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      left: 70,
                      bottom: mediaQuriy.height / 5.3,
                      child: Image.asset(
                        'assets/images/sebha_header_1.png',
                        color: theme.canvasColor,
                      )),
                  SizedBox(
                    height: mediaQuriy.height / 4.5,
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        'assets/images/sebha_header_2.png',
                        color: theme.canvasColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.tasbehatNumber,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(
            height: mediaQuriy.height / 33,
          ),
          Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(16)),
            child: Center(
                child: Text(
              '$number',
              style: theme.textTheme.titleLarge,
            )),
          ),
          SizedBox(
            height: mediaQuriy.height / 40,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                angle--;
                number++;
                if (number == 31) {
                  number = 0;
                  numberList++;
                  if (numberList == 1) {
                    text = tasbeh[1];
                  } else if (numberList == 2) {
                    text = tasbeh[2];
                  } else if (numberList == 3) {
                    text = tasbeh[0];
                    numberList = 0;
                  }
                }
              });
            },
            child: Container(
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                  color: theme.canvasColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                  child: Text(
                text,
                style: theme.textTheme.titleSmall,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
