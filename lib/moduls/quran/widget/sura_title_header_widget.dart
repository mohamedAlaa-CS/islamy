import 'package:flutter/material.dart';

class SuraTitle extends StatelessWidget {
//
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
            color: theme.primaryColor,
          ),
          child: const Text(
            'اسم السورة',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}
