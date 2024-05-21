

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


import 'package:url_launcher/link.dart';

class fotter extends StatefulWidget {
  const fotter({
    super.key,
  });

  @override
  State<fotter> createState() => _fotterState();
}
 
 
class _fotterState extends State<fotter> {

  @override
  Widget build(BuildContext context) {

     @override
  void initState(){
    // TODO: implement initState
    super.initState();

;
    //              Map<String, dynamic> data = {
    //   "name":DateTime.now(),
    //   "chat":"How Can hep you sir",
    //   "uid":"MHADI8h23NecxmnLe38kQCileWj2", 
    //  };
       
    //   //chat id create 
    //       chats(data);

        
     
  }
    return Container(
      height: 500,
      color:Colors.black,
      child: Column(
      
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
           
            children: [

              Expanded(
                flex: 1,
                child: Container()),


              Expanded(
                flex:2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "M A Majid Science College",
                      style: TextStyle(
                          color: Colors.white, fontSize:30),
                    ),

                    SizedBox(
                      height:25,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, \n consec tetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et \ndolore magna aliqua.",
                      style: TextStyle(color: Colors.white,fontSize:16),
                    ),
                    SizedBox(
                      height:20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Follow us",
                          style: TextStyle(color: Colors.white),
                        ),
                        Link(
                          uri: Uri.parse("https://github.com/"),
                          builder: (context, followLink) =>
                              IconButton(
                                  onPressed: followLink,
                                  icon: Icon(MdiIcons.youtube)),
                        ),
                        Icon(
                          MdiIcons.twitter,
                          color: Colors.white,
                        ),
                        Icon(
                          MdiIcons.facebook,
                          color: Colors.white,
                        ),
                        Icon(
                          MdiIcons.youtube,
                          color: Colors.white,
                        ),
                        Icon(
                          MdiIcons.instagram,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                flex:2,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "contact us",
                      style: TextStyle(
                          color: Colors.white, fontSize: 40),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            size:33,
                            color: Colors.white,
                          ),
                          SizedBox(
                          width:15,
                        ),
                          Text(
                            "+8801776464505",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                
                    
                    Row(
                      children: [
                        Icon(
                          Icons.web_asset,
                          size:33,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width:15,
                        ),
                        Text(
                          "https://flutter-lab.github.io/#/",
                          style: TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_city,
                            size:33,
                            color: Colors.amber,
                          ),
                          SizedBox(
                          width:15,
                        ),
                          Text(
                            "Gazipure/Dhaka",
                            style: TextStyle(
                                color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          size:33,
                          color: Colors.pink,
                        ),

                        SizedBox(
                          width:15,
                        ),
                        Text(
                          "sakibulislam5162@gmail.com",
                          style: TextStyle(
                              color: Colors.white, fontSize:20),
                        ),
                      ],
                    )
                  ],
                ),
              ),


              Expanded(
                flex:2,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Destination",
                      style: TextStyle(
                          color: Colors.white, fontSize: 40),
                    ),
                    
                    SizedBox(
                      height:20,
                    ),
                
                    Text("Lorem ipsum dolor sit amet, \n consec tetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et \ndolore magna aliqua.",style:TextStyle(color: Colors.grey[300],fontSize:18),)
                  
                   
                   
                  ],
                ),
              ),

              Expanded(
                flex:1,
                child: Container())
            ],
          ),
        ],
      ),
    );
  }
}
