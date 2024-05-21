
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:tanjibbord/lib/allimage.dart';
import 'package:tanjibbord/lib/mobiledesing/mobileheader.dart';
import 'package:tanjibbord/lib/mobiledesing/molefotter.dart';
import 'package:url_launcher/url_launcher.dart';


class Mobilehomepage extends StatelessWidget {
  const Mobilehomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       floatingActionButton:FloatingActionButton(onPressed: ()async{
            final _call = "https://wa.me/+8801830888045";
      
                if (await canLaunch(_call)) {
                  await launch(_call);
                }
        },child:Image.asset("assets/whatsapp.png",height:50,)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  mobileheaDER(),
          
                 Container(
                  height:220,
                  width:double.infinity,
                  decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/image.jpg",),fit:BoxFit.cover),
                  
                  ),
            
            
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      
                    ),
                    child: Row(
                      
                      children: [
                    
                           Padding(
                             padding: const EdgeInsets.all(15),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              
                              children: [
                                // Text("Explore bangladesh\nvillage with us",style: GoogleFonts.oswald(fontSize:30,color: Colors.white,),),
                                                   
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Ut elit tellus,luctus nec ullamcorper mattis, \npulvinar dapibus leo.",style:TextStyle(fontSize:13,color: Colors.white),)
                                                   
                              ],
                                                   
                                                 ),
                           ),
                        Container()
                      ],
                    ),
                  ),
                 ),
          
          
                 Padding(
                  padding: const EdgeInsets.symmetric(vertical:15,),
                  child: Column(
                    children: [
                      Text("our village popular destination",style:TextStyle(fontSize:20,fontWeight:FontWeight.w700),),
          
                      Align(alignment:Alignment.center, child: Text("Travelling More Easy With Our Guide Team & \nOur Travel Service Agency",style:TextStyle(fontSize:12,fontWeight:FontWeight.w700),)),
                    ],
                  ),
                ),
                
                ],
              ),
          
          
               Container(
                  height:300,
                  child: ListView.builder(scrollDirection:Axis.horizontal,itemCount:6,itemBuilder: (context, index) {
                return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height:200,
                              width:300,
                               child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(images[index],fit: BoxFit.cover,)),
                            ),
          
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:11),
                              child: Text("village road in the field", style: TextStyle(fontSize:18,fontWeight:FontWeight.w500),),
                            ),
                          ],
                        ),
                
                        
                      );
                  },),
                ),
      
      
                Image.asset("assets/pic.jpg"),
      
            SizedBox(
              height: 13,
            ),
      
           Container(
            
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          
                              MaterialButton(onPressed: () {
                                
                              },child:Container(
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(6)
                                ),
                                height:45,
                                width:130,
                                child:Center(child: Text("About us",style:TextStyle(color: Colors.white),)),
                              ),),
                          
                              SizedBox(
                                height:50,
                              ),
                              Text("Travelling More Easy With Our Guide\nTeam & Our Travel Service Agency",style:TextStyle(fontSize:20, fontWeight:FontWeight.w500),),
                                SizedBox(
                                  height:20,
                                ),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut\n elit tellus,  luctus nec ullamcorper mattis, pulvinar dapibus leo",style:TextStyle(fontSize:13),),
                               SizedBox(height:20,),
                              Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(238, 238, 238, 239),
                                
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(",,",style: TextStyle(fontSize:100,color: Colors.amber),),
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.Lorem\n ipsum dolor sit amet consectetur adipiscing elit dolor",style: TextStyle(fontSize:15),),
                                    SizedBox(height:20,),
                                    Text("joah",style:TextStyle(color: Colors.amber),)
                                  ],
                                ),
                              ),
                              )
                            ],
                          ),
                        ),
                      ),
      
      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                
                                    MaterialButton(onPressed: () {
                                      
                                    },child:Container(
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      height:45,
                                      width: 130,
                                      child:Center(child: Text("What we Do",style:TextStyle(color: Colors.white),)),
                        
                        
                                    ),),
                        
                                    SizedBox(
                                      height:50,
                                    ),
                                    Text("Travelling More Easy With Our Guide\nTeam & Our Travel Service Agency",style:TextStyle(fontSize:20, fontWeight:FontWeight.w500),),
                                      SizedBox(
                                        height:18,
                                      ),
                                    const Row(
                                      children: [
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Ut elit tellus,luctus nec ullamcorper mattis, \npulvinar dapibus leo",style:TextStyle(fontSize:13),),
                                      ],
                                    ),
                                     SizedBox(height:30,),
                                     
                                     const Column(
                                      children: [
                                        Row(children: [
                                          Icon(Icons.person,color: Colors.pink,size: 40,),
                                          Text("Completed Training Guide",style: TextStyle(fontSize:20),)
                                        ],),
                        
                                        
                                        Row(
                                          children: [
                                          SizedBox(
                                            width:45,
                                          ),  Text("Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Ut elit tellus, luctus nec  \nullamcorper mattis, pulvinar dapibus leo.",style: TextStyle(fontSize:15),),
                                          ],
                                        )
                                      ],
                                     ),
                                       SizedBox(
                                        height:20,
                                       ),
                                     const Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                         
                                          children: [
                                          Icon(Icons.admin_panel_settings,color: Colors.pink,size:40,),
                                          Text("Completed Training Guide",style: TextStyle(fontSize:20),)
                                        ],),
                                        Row(
                                          children: [
                                           SizedBox(
                                            width:45,
                                           ), Text("Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Ut elit tellus, luctus \nnec ullamcorper mattis, pulvinar dapibus leo.",style:TextStyle(fontSize:15),),
                                          ],
                                        )
                                      ],
                                     ),
                        
                                     SizedBox(
                                          height: 40,
                                        ),
                                
                                   Row(
                                    children: [
                                                    
                                
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      height:45,
                                      width:130,
                                      child:Center(child: Text("What we Do",style:TextStyle(color: Colors.white,fontSize:13),)),
                                    ),
                                
                                
                                    Row(
                                      children: [
                                
                                        IconButton(onPressed: () {
                                          
                                        }, icon:Icon(Icons.play_arrow_sharp,color: Colors.pink,size:30,)),
                                
                                        Text("video play",style:TextStyle(fontSize:18),)
                                      ],
                                    )
                                    ],
                                   ),
                                   SizedBox(
                                    height:50,
                                   )  
                                  ],
                                ),
                      ),
      
                      Mobilefotter()
            ],
          ),
        ),
      ),
    );
  }
}