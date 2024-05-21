import 'package:flutter/cupertino.dart';
import 'package:tanjibbord/homepage.dart';
import 'package:tanjibbord/lib/homepage.dart';
import 'package:tanjibbord/lib/mobiledesing/homehomepage.dart';


class statechage extends StatelessWidget {
  const statechage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth<600){
         return Mobilehomepage();
      }else{
        return HomePages();
      }
    },);
  }
}