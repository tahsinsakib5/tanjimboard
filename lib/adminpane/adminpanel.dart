import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:tanjibbord/resultsearchpage.dart';

class Adminpanel extends StatefulWidget {
  Adminpanel({super.key});

  @override
  State<Adminpanel> createState() => _AdminpanelState();
}

final TextEditingController namecontroler = TextEditingController();
final TextEditingController rollcontroler = TextEditingController();
final TextEditingController banglacontroler = TextEditingController();
final TextEditingController englishcontroler = TextEditingController();

final List<String> allclass = [
  "class one",
  "class two",
  "class three",
  "class four"
];
String? selactiontext;

class _AdminpanelState extends State<Adminpanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
            flex: 6,
            child: Container(
              color: Color.fromARGB(255, 230, 224, 224),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(70),
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "personal details",
                                    style: TextStyle(fontSize: 30),
                                  )),
                              SizedBox(
                                height: 70,
                              ),
                              DropdownButtonFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                                value: selactiontext,
                                items: allclass.map((String item) {
                                  return DropdownMenuItem(
                                      value: item, child: Text(item));
                                }).toList(),
                                onChanged: (value) {
                                  selactiontext = value;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: namecontroler,
                                decoration: InputDecoration(
                                    hintText: "Full name",
                                    border: OutlineInputBorder()),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: rollcontroler,
                                      decoration: InputDecoration(
                                          hintText: "Roll number",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Full reji number",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Madrasa",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "markaj",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              )
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
                          padding: EdgeInsets.all(70),
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Result",
                                    style: TextStyle(fontSize: 30),
                                  )),
                              SizedBox(
                                height: 70,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: englishcontroler,
                                      decoration: InputDecoration(
                                          hintText: "English",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Math",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: banglacontroler,
                                      decoration: InputDecoration(
                                          hintText: "bangla",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "arabic",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "bangla",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "arabic",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setdata();
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Searchpage(),
                              ));
                        },
                        child: const Text("data")),
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
        await FirebaseFirestore.instance.collection(selactiontext.toString());

    var data = {
      "name": namecontroler.text,
      "rool": rollcontroler.text,
      "english": englishcontroler.text,
      "math": banglacontroler.text,
    };

    colaction.add(data);
  }
}
