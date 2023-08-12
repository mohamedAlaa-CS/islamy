import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/widget/hadeth_name.dart';

class HadethDetils extends StatelessWidget {
  static const String routeName = 'hadeth_detils';
  const HadethDetils({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as HadethData;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background_light.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Islami'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin:
              const EdgeInsets.only(top: 20, bottom: 50, right: 20, left: 20),
          padding: const EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              color: const Color(0xffF8F8F8).withOpacity(0.6),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: theme.primaryColor,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.title,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.play_circle,
                    size: 27.1,
                  ),
                ],
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 2,
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                    child: Text(
                      args.content,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
