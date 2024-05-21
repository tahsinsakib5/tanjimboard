

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final Map<String, dynamic> result;
  const HomePage({
    super.key,
    required this.result,
  });
    
    
  @override


  Widget build(BuildContext context) {
  int allresult = (int.parse(result["result"][0]["result"]) + 
                 int.parse(result["result"][1]["result"]) + 
                 int.parse(result["result"][2]["result"]) + 
                 int.parse(result["result"][3]["result"]) + 
                 int.parse(result["result"][4]["result"]) + 
                 int.parse(result["result"][5]["result"]) + 
                 int.parse(result["result"][6]["result"]) + 
                 int.parse(result["result"][7]["result"]) + 
                 int.parse(result["result"][8]["result"]) + 
                 int.parse(result["result"][9]["result"]) + 
                 int.parse(result["result"][10]["result"]) + 
                 int.parse(result["result"][11]["result"]) + 
                 int.parse(result["result"][12]["result"]));


        double  persent =  allresult/13;   
   
      
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 1200,
          width: 600,
          child: Column(
            children: [
              Table(
                border: TableBorder.all(),
                children:   [
                
                  TableRow(children: [
                    
                    TableCell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         
                        Padding(
                          padding: EdgeInsets.only(right:20),
                          child: Image(
                            image: AssetImage(
                              "assets/logo.png",
                              
                            ),
                            height:75,
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "M A Majid Science College",
                              style: TextStyle(fontSize:25),
                            ),
                            Text("Khirati Kapasia Gazipure",style:TextStyle(fontSize:20),),
                            Text(
                                "হোল্ডিং-২০৫,কাজলা ভাঙ্গাপ্রেস,যাত্রাবাড়ী, ঢাকা-১২৩৬"),
                             SizedBox(
                              height:25,
                             )
                          ],
                        )
                      ],
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                                       "Firs Semester Exam",
                        style: TextStyle(fontSize: 22),
                      )),
                    ))
                  ]),
                ],
              ),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(0.5),
                  1: FlexColumnWidth(0.4)
                },
                border: TableBorder.all(),
                children: [
                   TableRow(children: [
                    TableCell(child: customtexttwo(customt: "Roll : ${result["rool"]}",)),
                    TableCell(child: customtexttwo(customt: "Group : ${result["group"]}",))
                  ]),
                  TableRow(children: [
                    TableCell(child: customtexttwo(customt:"Name : ${result['name']}",)),
                     TableCell(
                        child: customtexttwo(customt: "Year: ${result["year"]}",))
                  ]),
                ],
              ),
              Table(
                border: TableBorder.all(),
                children: [
                  const TableRow(children: [
                    TableCell(
                        child: customtext(customt: "",))
                  ]),
                 
                ],
              ),
              Table(
                border: TableBorder.all(),
                children:  [
                  const TableRow(children: [
                    TableCell(
                      child: customtext(customt: "No",),
                    ),
                    TableCell(
                      child: customtext(customt: "Subject",),
                    ),
                    TableCell(
                      child: customtext(customt: "Result",),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "1",),
                    ),
                     TableCell(
                      child: customtext(customt:result["result"][1]["subject"], ),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][1]["result"], ),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "2",),
                    ),
                     TableCell(
                      child: customtext(customt:result["result"][1]["subject"],),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][1]["result"],),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "3", ),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][2]["subject"],),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][2]["result"], ),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "4", ),
                    ),
                     TableCell(
                      child: customtext(customt:result["result"][3]["subject"],),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][3]["result"],),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "5", ),
                    ),
                     TableCell(
                      child: customtext(customt:result["result"][4]["subject"], ),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][4]["result"],),
                    ),
                  ]),
        
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "6", ),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][5]["subject"], ),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][5]["result"],),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "7", ),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][6]["subject"], ),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][6]["result"],),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "8", ),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][7]["subject"],),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][7]["result"],),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "9",),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][8]["subject"],),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][8]["result"],),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "10", ),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][9]["subject"], ),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][9]["result"]),
                    ),

                    
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "11", ),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][10]["subject"],),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][10]["result"],),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "12",),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][11]["subject"],),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][11]["result"],),
                    ),
                  ]),
                  TableRow(children: [
                    const TableCell(
                      child: customtext(customt: "13",),
                    ),
                     TableCell(
                      child: customtext(customt: result["result"][12]["subject"],),
                    ),
                    TableCell(
                      child: customtext(customt:result["result"][12]["result"], ),
                    ),
                  ])
                ],
              ),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(0.6),
                  1: FlexColumnWidth(0.3)
                },
                border: TableBorder.all(),
                children:  [
                   TableRow(children: [
                    TableCell(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: customtext(customt: "মোট প্রাপ্ত নম্বর", ))),
           
                    TableCell(child: customtext(customt:allresult.toString(),)),
                  ]),
                  TableRow(children: [
                    const TableCell(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: customtext(customt: "প্রাপ্ত বিভাগ", ))),
                    TableCell(child: customtext(customt:great(persent.toInt()), )),
                  ]),
                  const TableRow(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: TableCell(child: customtext(customt: "মেধা স্থান",)),
                    ),
                    Expanded(
                        flex: 1,
                        child: TableCell(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: customtext(customt: "92", ),
                        )))
                  ]),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }

 String great(int result){
 
 if(result>80){
  return "A+";
 }else if(result>65){
  return"A";
 }else if(result>50){
  return "A-";
 }else{
  return "b";
 }

 }

 
  
}

class customtext extends StatelessWidget {
  final String customt;
  
  const customtext({
    super.key,
    required this.customt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: Text(customt,style:TextStyle(fontSize:14),),
    );
  }
}


class customtexttwo extends StatelessWidget {
  final String customt;
  
  const customtexttwo({
    super.key,
    required this.customt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: Text(customt,style:TextStyle(fontSize:17,fontWeight: FontWeight.w600),),
    );
  }
}
