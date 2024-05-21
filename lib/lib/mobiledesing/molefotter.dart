import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/link.dart';


class Mobilefotter extends StatelessWidget {
  const Mobilefotter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
      
          
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Village tour gaid",
                          style: TextStyle(
                              color: Colors.white, fontSize:20),
                        ),
                     
                        SizedBox(
                          height:15,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, \n consec tetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et \ndolore magna aliqua.",
                          style: TextStyle(color: Colors.white,fontSize:14),
                        ),
                        SizedBox(
                          height:12,
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
                    height: 10,
                  ),

                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Destination",
                      style: TextStyle(
                          color: Colors.white, fontSize:20),
                    ),
                    
                    SizedBox(
                      height:20,
                    ),
                                  
                    Text("Lorem ipsum dolor sit amet, \nconsec tetur adipiscing elit, sed do eiusmod\ntempor incididunt ut labore et \ndolore magna aliqua.",style:TextStyle(color: Colors.grey[300],fontSize:14),)

                  ],
                                  ),
                  

                  SizedBox(
                    height:20,
                  ),

                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "contact us",
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
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
                              "01830888045",
                              style: TextStyle(
                                  color: Colors.white, fontSize:15),
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
                                color: Colors.white, fontSize:12),
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
                                  color: Colors.white, fontSize:15),
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
                                color: Colors.white, fontSize:15),
                          ),
                        ],
                      )
                    ],
                                   ),
                 ),
                     
      
        ],
      ),
    ) ;
  }
}