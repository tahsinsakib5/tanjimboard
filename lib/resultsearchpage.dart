import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tanjibbord/adminpane/adminpanel.dart';
import 'package:tanjibbord/class.dart';
import 'package:tanjibbord/homepage.dart';
import 'package:tanjibbord/lib/mobiledesing/homepage.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

final TextEditingController controller = TextEditingController();

class _SearchpageState extends State<Searchpage> {
  String? selactiontext;
  
  bool? buttonvelue;

  Future<Map<String, dynamic>?> runFilter(String enteredKeyword) async {
    if (enteredKeyword.isEmpty) {
      return null;
    } else {
      var snapShot = await FirebaseFirestore.instance
          .collection(selactiontext!).doc(enteredKeyword).get();
         
         

         return snapShot.data();

      // Map<String, dynamic>? result = _allUsers.firstWhere(
      //     (element) => element["roll"] == int.parse(enteredKeyword));
    }
  }

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Adminpanel(),
              ));
        },
        child: Icon(Icons.admin_panel_settings),
      ),
      appBar: AppBar(title: Text("M A Majid Science College"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
           
           Expanded(
            flex:2,       
            child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 241, 239, 239)),
            
            child: Column(
              children: [
               SizedBox(
                height: 20,
               ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/logo.png"),
                ),
                     Text("M A Majid Science College",style:TextStyle(fontSize:24,fontWeight: FontWeight.w600),),
                     Text("Khirati Kapasia Gazipure",style:TextStyle(fontSize:18),),

                     SizedBox(height:40,),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(color:Color.fromARGB(255, 113, 150, 238),borderRadius: BorderRadius.circular(7)),
                    
                    child: ListTile( leading:Icon(Icons.web,color: Colors.white,),title: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => statechage(),));
                    }, child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Our website",style:TextStyle(fontSize:20,color: Colors.white),),
                    )),),
                  ),
                ),

               
              ],
            ),
            )),

            Expanded(
              flex: 6,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                 
                  image:DecorationImage(image:AssetImage("assets/collage.jpg",),fit:BoxFit.cover)
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                        
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButtonFormField(
                              decoration: InputDecoration(filled: true,fillColor:Colors.white.withOpacity(0.6),border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),hintText:"select your class"),
                              value: selactiontext,
                              items: allclass.map((String item) {
                                return DropdownMenuItem(value: item, child: Text(item));
                              }).toList(),
                              onChanged: (value) {
                                selactiontext = value;
                                setState(() {});
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              controller: controller,
                              decoration: InputDecoration(filled: true,fillColor:Colors.white.withOpacity(0.6), border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
                            ),
                        
                              SizedBox(
                                height: 60,
                              ),
                             MaterialButton(
                                onPressed: ()async{
                                  if (selactiontext != null) {
                                   var  result = await runFilter(controller.text);
                        
                                    if (result != null) {
                                     print(result);
                                  print(result["result"][1]["subject"]);    
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HomePage(
                                              result: result,
                                            ),
                                          ));
                  
                              
                                    }
                                    //  buttonvelue =true;
                                  }
                        
                                },
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                      child: buttonvelue==true?CircularProgressIndicator(): Text("search",
                                    
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  )),
                                ),
                              ),
                        
                        
                        
                        
                            
                            // selactiontext != null
                            //     ? FutureBuilder(
                            //         future: getdata(selactiontext!),
                            //         builder: (context, snapshot) {
                            //           if (snapshot.connectionState == ConnectionState.done) {
                            //             return Expanded(
                            //               child: ListView.builder(
                            //                 itemCount: snapshot.data!.length,
                            //                 itemBuilder: (context, index) {
                            //                   return Column(
                            //                     children: [
                            //                       Text(snapshot.data![index].name),
                            //                       Text(snapshot.data![index].english),
                            //                       Text(snapshot.data![index].rool)
                            //                     ],
                            //                   );
                            //                 },
                            //               ),
                            //             );
                            //           } else {
                            //             return CircularProgressIndicator();
                            //           }
                            //         },
                            //       )
                  
                  
                                // : Container()
                          ],
                        ),
                      ),
                  
                      Expanded(child: Container())
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List> getdata(String collectionName) async {
    List datalist = [];

    var colaction =
        await FirebaseFirestore.instance.collection(collectionName).get();

    for (var data in colaction.docs) {
      String name = data.get("name");
      String rool = data.get("rool");
      String english = data.get("english");

      Person datas = Person(name: name, rool: rool, english: english);

      datalist.add(datas);
    }
    return datalist;
  }



}
