
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tanjibbord/allfuntion.dart';
import 'package:tanjibbord/lib/mobiledesing/homepage.dart';
import 'package:tanjibbord/statechange.dart';

class Adminpanel extends StatefulWidget {
  Adminpanel({super.key});

  @override
  State<Adminpanel> createState() => _AdminpanelState();
}

final TextEditingController namecontroler = TextEditingController();
final TextEditingController rollcontroler = TextEditingController();
final TextEditingController groupcontroler = TextEditingController();
final TextEditingController banglacontroler = TextEditingController();
final TextEditingController banglacontrolertwo = TextEditingController();
final TextEditingController englishcontroler = TextEditingController();
final TextEditingController englishcontrolertwo = TextEditingController();
final TextEditingController itcontroler = TextEditingController();
final TextEditingController controllerone= TextEditingController();
final TextEditingController controllertwo = TextEditingController();
final TextEditingController controllerthree = TextEditingController();
final TextEditingController controllerfour = TextEditingController();
final TextEditingController controllerfive = TextEditingController();
final TextEditingController controllersix = TextEditingController();
final TextEditingController controllersaven= TextEditingController();
final TextEditingController controllereight= TextEditingController();

final List<String> allclass = [
  // "class one",
  // "class two",
  // "class three",
  // "class four"

   "1st Year",
  "2nd year",

];


final List<String> group = [
  "Science",
  "Arts",
  "Commerce",
];
String? selactedclass;
String? selactedgroup;

class _AdminpanelState extends State<Adminpanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
         Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Statechange(),
                              ));
      },child:Icon(Icons.admin_panel_settings),),
      body: Row(
        children: [
          Expanded(
              flex: 2,
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
              color: const Color.fromARGB(255, 230, 224, 224),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(70),
                          child: Column(
                            children: [
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Personal Details",
                                    style: TextStyle(fontSize: 30),
                                  )),
                              const SizedBox(
                                height: 70,
                              ),
                              DropdownButtonFormField(
                                decoration: const InputDecoration(
                                  hintText:"Select you class",
                                    border: OutlineInputBorder()),
                                value: selactedclass,
                                items: allclass.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (value) {
                                  selactedclass = value;
                                  setState(() {
                                    
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: namecontroler,
                                decoration: const InputDecoration(
                                    hintText: "Full name",
                                    border: OutlineInputBorder()),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: rollcontroler,
                                      decoration: const InputDecoration(
                                          hintText: "Roll number",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                   Expanded(
                                    child:  DropdownButtonFormField(
                                decoration: const InputDecoration(
                                  hintText:"Select Group",
                                    border: OutlineInputBorder()),
                                value: selactedgroup,
                                items: group.map((String item) {
                                  return DropdownMenuItem(
                                      value: item, child: Text(item));
                                }).toList(),
                                onChanged: (value) {
                                  selactedgroup = value;
                                  setState(() {
                                    
                                  });
                                },
                              ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(70),
                          child: Column(
                            children: [
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Result",
                                    style: TextStyle(fontSize: 30),
                                  )),
                              const SizedBox(
                                height: 70,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: englishcontroler,
                                      decoration: const InputDecoration(
                                          hintText: "English 1st",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                   Expanded(
                                    child: TextField(
                                      controller: englishcontrolertwo,
                                      decoration: InputDecoration(
                                          hintText: "English 2nd",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: banglacontroler,
                                      decoration: const InputDecoration(
                                          hintText: "Bangla 1st",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                   Expanded(
                                    child: TextField(
                                      controller: banglacontrolertwo,
                                      decoration: InputDecoration(
                                          hintText: "Bangla 2nd",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                             Row(
                                children: [
                                   Expanded(
                                    child: TextField(
                                      controller: controllerone,
                                      decoration: InputDecoration(
                                          hintText:Subjectlistone(selactedgroup),
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller: controllertwo,
                                      decoration: InputDecoration(
                                          hintText:subjectlisttwo(selactedgroup),
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                               const SizedBox(
                                height: 20,
                              ),
                               Row(
                                children: [
                                 Expanded(
                                    child: TextField(
                                      controller: controllerthree,
                                      decoration: InputDecoration(
                                          hintText:Subjectlistthree(selactedgroup),
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller:controllerfour,
                                      decoration: InputDecoration(
                                          hintText:Subjectlistfour(selactedgroup),
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                               const SizedBox(
                                height: 20,
                              ),
                               Row(
                                children: [
                                 Expanded(
                                    child: TextField(
                                      controller:controllerfive,
                                      decoration: InputDecoration(
                                          hintText:subjectlistfive(selactedgroup),
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller:controllersix,
                                      decoration: InputDecoration(
                                          hintText:subjectlistsix(selactedgroup),
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                               const SizedBox(
                                height: 20,
                              ),
                               Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: controllersaven,
                                      decoration: InputDecoration(
                                          hintText:subjectlistseven(selactedgroup),
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller:controllereight ,
                                      decoration: InputDecoration(
                                          hintText:subjectlisteight(selactedgroup),
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                               const SizedBox(
                                height: 20,
                              ),
                                TextField(
                                   controller: itcontroler,
                                   decoration: InputDecoration(
                                       hintText: "Ict",
                                       border: OutlineInputBorder()),
                                 ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      onPressed: () {
                        setdata();

                        print("udeted");

                        // namecontroler.clear();
                        // rollcontroler.clear();
                        // banglacontroler.clear();
                        // banglacontrolertwo.clear();
                        // englishcontroler.clear();
                        // englishcontrolertwo.clear();
                        // arabiccontroler.clear();
                        // arabiccontrolertwo.clear();
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                            child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    ),


                    SizedBox(
                      height:100,
                    )
                   
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future setdata() async {
    var colaction =
        await FirebaseFirestore.instance.collection(selactedclass.toString()).doc(rollcontroler.text);



        List result = [
  {"subject": "english 1st", "result":englishcontroler.text},
  {"subject": "english 2nd", "result":englishcontrolertwo.text},
  {"subject": "bangla 1st", "result":banglacontroler.text},
  {"subject": "english 2nd", "result":banglacontrolertwo.text},
  {"subject": Subjectlistone(selactedgroup), "result":controllerone.text},
  {"subject": subjectlisttwo(selactedgroup), "result":controllertwo.text},
  {"subject": Subjectlistthree(selactedgroup), "result":controllerthree.text},
  {"subject": Subjectlistfour(selactedgroup), "result":controllerfour.text},
  {"subject": subjectlistfive(selactedgroup), "result":controllerfive.text},
  {"subject": subjectlistsix(selactedgroup), "result":controllersix.text},
  {"subject": subjectlistseven(selactedgroup), "result":controllersaven.text},
  {"subject": subjectlisteight(selactedgroup), "result":controllereight.text},
  {"subject": "Ict", "result":itcontroler.text},
  
];

    var data = {
      "name": namecontroler.text,
      "rool": rollcontroler.text,
      "group": selactedgroup,
      "year": selactedclass,
      "result":result,
    };

    await colaction.set(data);
  }

//     String refirehint(var classname){
 
//  if(classname=="class one"){
//   return "Arabic";
//  }else if(classname=="class two"){
//   return"History";
//  }else if(classname=="class three"){
//   return "Math";
//  }else{
//   return "Qran";
//  }

//  }
  
}


