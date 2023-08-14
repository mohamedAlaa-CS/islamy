import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  static const String routeName = 'radio_view';
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 40,),
            Image.asset('assets/images/radio_header.png'),
            Text('اذاعة القرآن الكريم ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            Image.asset('assets/images/radio_player.png'),
                    SizedBox(height: 40,),
          
          ],
        ),
      ),
    );
  }
}
