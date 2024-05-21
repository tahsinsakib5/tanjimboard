
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanjibbord/adminpane/adminpanel.dart';
import 'package:tanjibbord/class.dart';
import 'package:tanjibbord/homepage.dart';

class MobilehomePage extends StatefulWidget {
  const MobilehomePage({super.key});

  @override
  State<MobilehomePage> createState() => _MobilehomePageState();
}
final TextEditingController controller = TextEditingController();

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
class _MobilehomePageState extends State<MobilehomePage> {

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
      body: Column(
        children: [
         Container(
           height:60,
           decoration: BoxDecoration(
             color: Colors.blue
           ),
           child: Center(child: Text("বেফাকুল মাদারিসিল আরাবিয়া বাংলাদেশ",style: TextStyle(fontSize:20),)),
         ),
       

          SizedBox(
            height: 100,
          ),


          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
             
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DropdownButtonFormField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),hintText:"select your class"),
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
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
                ),
            
                  SizedBox(
                   height: 20,
                  ),
                 MaterialButton(
                    onPressed: ()async{
                      if (selactiontext != null) {
                       var  result = await runFilter(controller.text);
            
                        if (result != null) {
                          print(result);
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
            
            
            
            
               
                
              ],
            ),
          ),
        ],
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