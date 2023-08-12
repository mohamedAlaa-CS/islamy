import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  static const String routeName = 'sebha_view';
   SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
int number = 0;
int numberList = 0;
String text = 'سبحان اللّة';
List<String> tasbeh =['سبحان اللّة', 'الحمد للّة', 'اللّة اكبر'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/sebha_header_1.png',),
          Image.asset('assets/images/sebha_header_2.png'),
        const   SizedBox(
            height: 30,
          ),
          const Text(
            'عدد التسبيحات',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
         const  SizedBox(
            height: 25,
          ),
          Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: const Color(0xffB7935F),
                borderRadius: BorderRadius.circular(16)),
            child:  Center(
                child: Text(
              '$number',
              style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
         const  SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
             setState(() {
                number++;
                if(number == 31){
                  number =0;
                  numberList++;
                  if(numberList ==1){
                    text=tasbeh[1];
                  } else if(numberList ==2){
                    text=tasbeh[2];
                  }else if(numberList == 3){
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
                  color: const Color(0xffB7935F),
                  borderRadius: BorderRadius.circular(16)),
              child:  Center(
                  child: Text(
                text,
                style:const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
