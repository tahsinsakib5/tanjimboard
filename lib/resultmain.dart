// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:tanjibbord/adminpane/adminpanel.dart';
// import 'package:tanjibbord/class.dart';
// import 'package:tanjibbord/homepage.dart';

// class Searchpage extends StatefulWidget {
//   const Searchpage({super.key});

//   @override
//   State<Searchpage> createState() => _SearchpageState();
// }

// final TextEditingController controller = TextEditingController();

// class _SearchpageState extends State<Searchpage> {
//   String? selactiontext;

//   Future<Map<String, dynamic>?> runFilter(String enteredKeyword) async {
//     if (enteredKeyword.isEmpty) {
//       return null;
//     } else {
//       var snapShot = await FirebaseFirestore.instance
//           .collection(selactiontext!)
//           .where('rool', isEqualTo: enteredKeyword)
//           .limit(1)
//           .get();

//       if (snapShot.size != 0) {
//         var doc = snapShot.docs.first.data();
//         print(doc);

//         return doc;
//       }

//       return null;

//       // Map<String, dynamic>? result = _allUsers.firstWhere(
//       //     (element) => element["roll"] == int.parse(enteredKeyword));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
  

//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => Adminpanel(),
//               ));
//         },
//         child: Icon(Icons.admin_panel_settings),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
           
//            Expanded(
//             flex:2,
//             child: Container(decoration: BoxDecoration(color: Colors.blue),)),

//             Expanded(
//               flex: 6,
//               child: Column(
//                 children: [
//                   DropdownButtonFormField(
//                     decoration: InputDecoration(border: OutlineInputBorder(),hintText:"select your class"),
//                     value: selactiontext,
//                     items: allclass.map((String item) {
//                       return DropdownMenuItem(value: item, child: Text(item));
//                     }).toList(),
//                     onChanged: (value) {
//                       selactiontext = value;
//                       setState(() {});
//                     },
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   TextField(
//                     controller: controller,
//                     decoration: InputDecoration(border: OutlineInputBorder()),
//                   ),
//                   ElevatedButton(
//                       onPressed: () async {
//                         // Map<String, dynamic>? mainresult = runFilter(controller.text);
              
//                         if (selactiontext != null) {
//                           var result = await runFilter(controller.text);
              
//                           if (result != null) {
//                             print(result);
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => HomePage(
//                                     result: result,
//                                   ),
//                                 ));
//                           }
//                         }
//                       },
//                       child: const Text("Search")),
//                   ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => Adminpanel()));
//                       },
//                       child: const Text("text")),
//                   selactiontext != null
//                       ? FutureBuilder(
//                           future: getdata(selactiontext!),
//                           builder: (context, snapshot) {
//                             if (snapshot.connectionState == ConnectionState.done) {
//                               return Expanded(
//                                 child: ListView.builder(
//                                   itemCount: snapshot.data!.length,
//                                   itemBuilder: (context, index) {
//                                     return Column(
//                                       children: [
//                                         Text(snapshot.data![index].name),
//                                         Text(snapshot.data![index].english),
//                                         Text(snapshot.data![index].rool)
//                                       ],
//                                     );
//                                   },
//                                 ),
//                               );
//                             } else {
//                               return CircularProgressIndicator();
//                             }
//                           },
//                         )
//                       : Container()
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<List> getdata(String collectionName) async {
//     List datalist = [];

//     var colaction =
//         await FirebaseFirestore.instance.collection(collectionName).get();

//     for (var data in colaction.docs) {
//       String name = data.get("name");
//       String rool = data.get("rool");
//       String english = data.get("english");

//       Person datas = Person(name: name, rool: rool, english: english);

//       datalist.add(datas);
//     }
//     return datalist;
//   }
// }
