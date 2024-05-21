


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tanjibbord/lib/fotter.dart';


class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color:Color(0xFF0f8f9fa),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex:2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 60,
                  ),
                  Text("Village tour",style:TextStyle(fontSize:30,fontWeight: FontWeight.w700),)
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => fotter(),));
                }, child: Text("Home",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),),
        
                  
                  Text("Aboute",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),
                  Text("Pages",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700),),
                  
                ],
              ),
            ),
            Expanded(
              flex:4,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 2,
                    color: Colors.grey,
                  ),
        
                  SizedBox(
                    width:17,
                  ),
                  Icon(Icons.phone,color: Colors.pink,),
                   SizedBox(
                    width:14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("call now"),
                      Text("+8801776464505",style:TextStyle(fontSize:21,fontWeight: FontWeight.w700)),
                    ],
                  ),
        
                    SizedBox(
                    width:19,
                  ),
        
                   Icon(MdiIcons.gmail,color: Colors.pink,),
                   SizedBox(
                    width:14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Gmail"),
                      Text("sakibulislam5162@gmail.com",style:TextStyle(fontSize:16,fontWeight: FontWeight.w700)),
                    ],
                  ),
                 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
