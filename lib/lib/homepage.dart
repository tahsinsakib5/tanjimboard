
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tanjibbord/lib/allimage.dart';
import 'package:tanjibbord/lib/fotter.dart';
import 'package:tanjibbord/lib/header.dart';


import 'package:url_launcher/url_launcher.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(onPressed: ()async{
          final _call = "https://wa.me/+8801776464505";

              if (await canLaunch(_call)) {
                await launch(_call);
              }
      },child:Icon(MdiIcons.whatsapp),),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            header(),
            Container(
              height:700,
              width:double.infinity,
              decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/collage.jpg",),fit:BoxFit.cover),
              
              ),
        
        
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  
                ),
                child: Row(
                  
                  children: [
                
                       Padding(
                         padding: const EdgeInsets.all(100),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("M A Majid Science College",style: TextStyle(fontSize:85,color: Colors.white),),
                                               
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,\nluctus nec ullamcorper mattis, pulvinar dapibus leo.",style:TextStyle(fontSize:25,color: Colors.white),)
                                               
                          ],
                                               
                                             ),
                       ),
                    Container()
                  ],
                ),
              ),
              
            ),
        
        
            Padding(
              padding: const EdgeInsets.symmetric(vertical:40),
              child: Column(
                children: [
                  Text("our Collage Campus",style:TextStyle(fontSize:40,fontWeight:FontWeight.w700),),

                  Text("Travelling More Easy With Our Guide Team & Our Travel Service Agency",style:TextStyle(fontSize:20,fontWeight:FontWeight.w700),),
                ],
              ),
            ),
        
            // Container(
            //   child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3), itemCount:9,itemBuilder:(context, index) {
            //     return Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Container(
            //         height:200,
            //         width:200,
            //          child: Image.asset("assets/image.jpg",fit: BoxFit.cover,),
            //       ),
            //     );
            //   },),
            // ),



            Container(
              height: 600,
              child: ListView.builder(scrollDirection:Axis.horizontal,itemCount:6,itemBuilder: (context, index) {
            return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height:400,
                          width:600,
                           child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(images[index],fit: BoxFit.cover,)),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:17),
                          child: Text("Collage Campus", style: TextStyle(fontSize:25),),
                        ),
                      ],
                    ),
            
                    
                  );
              },),
            ),


            

            Container(
              height:800,
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                           
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child:Image.asset("assets/collage.jpg"),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                                    
                                MaterialButton(onPressed: () {
                                  
                                },child:Container(
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  height:60,
                                  width: 170,
                                  child:Center(child: Text("About us",style:TextStyle(color: Colors.white),)),
                                ),),

                                SizedBox(height:25,),
                                Text("Travelling More Easy With Our Guide\n Team & Our Travel Service Agency",style:TextStyle(fontSize:40, fontWeight:FontWeight.w500),),
                                  SizedBox(
                                    height:20,
                                  ),
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,\n luctus nec ullamcorper mattis, pulvinar dapibus leo",style:TextStyle(fontSize:20),),
                                 SizedBox(height:50,),
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
                                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.Lorem\n ipsum dolor sit amet consectetur adipiscing elit dolor",style: TextStyle(fontSize:20),),
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
                      ],
                    ),
                  )
                ],
              ),
            ),

             Container(
              height:800,
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                            
                            ),
                          ),
                          
                          Expanded(
                            flex:3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            
                                MaterialButton(onPressed: () {
                                  
                                },child:Container(
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  height:60,
                                  width: 170,
                                  child:Center(child: Text("What we Do",style:TextStyle(color: Colors.white),)),


                                ),),

                                SizedBox(
                                  height:30,
                                ),
                                Text("Travelling More Easy With Our Guide\n Team & Our Travel Service Agency",style:TextStyle(fontSize:40, fontWeight:FontWeight.w500),),
                                  SizedBox(
                                    height:18,
                                  ),
                                const Row(
                                  children: [
                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,\n luctus nec ullamcorper mattis, pulvinar dapibus leo",style:TextStyle(fontSize:20),),
                                  ],
                                ),
                                 SizedBox(height:30,),
                                 
                                 const Column(
                                  children: [
                                    Row(children: [
                                      Icon(Icons.person,color: Colors.pink,size: 40,),
                                      Text("Completed Training Guide",style: TextStyle(fontSize:24),)
                                    ],),

                                    
                                    Row(
                                      children: [
                                      SizedBox(
                                        width:35,
                                      ),  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,\n luctus nec ullamcorper mattis, pulvinar dapibus leo.",style: TextStyle(fontSize:20),),
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
                                      Text("Completed Training Guide",style: TextStyle(fontSize:24),)
                                    ],),
                                    Row(
                                      children: [
                                       SizedBox(
                                        width:35,
                                       ), Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus,\n luctus nec ullamcorper mattis, pulvinar dapibus leo.",style:TextStyle(fontSize:17),),
                                      ],
                                    )
                                  ],
                                 ),

                                 SizedBox(
                                      height: 20,
                                    ),
                            
                               Row(
                                children: [
                                                
                            
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(6)
                                  ),
                                  height:60,
                                  width: 170,
                                  child:Center(child: Text("What we Do",style:TextStyle(color: Colors.white,fontSize:17),)),
                                ),
                            
                            
                                Row(
                                  children: [
                            
                                    IconButton(onPressed: () {
                                      
                                    }, icon:Icon(Icons.play_arrow_sharp,color: Colors.pink,size:40,)),
                            
                                    Text("video play",style:TextStyle(fontSize:18),)
                                  ],
                                )
                                ],
                               )  
                              ],
                            ),
                          ),
                        ],
                      ),
                    
                  ),

                  Container(),

                  Expanded(
                    child: Row(
                      
                      children: [
                         Expanded(
                          flex: 1,
                           child: Container(
                           
                            
                                                   ),
                         ),
                         Expanded(
                          flex: 3,
                           child: Container(
                           height:double.infinity,
                            child:Image.asset("assets/collage.jpg",fit: BoxFit.cover,),
                                                   ),
                         ),
                        Expanded(
                          flex: 1,
                          child: Container(
                           
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        
            fotter()
          ],
        ),
      ),
    );
  }
}