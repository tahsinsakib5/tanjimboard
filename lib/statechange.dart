import 'package:flutter/cupertino.dart';
import 'package:tanjibbord/mobiledesing/mobelehomepage.dart';
import 'package:tanjibbord/resultsearchpage.dart';

class Statechange extends StatelessWidget {
  const Statechange({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth<550){
        return MobilehomePage();
      }else{
        return Searchpage();
      }
    },);
  }
}