import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  final Map<String, dynamic>? result;
  const HomePage({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    print(result);
    return Scaffold(
      body: Container(
        height: 1200,
        width: 600,
        child: Column(
          children: [
            Table(
              border: TableBorder.all(),
              children: const [
                TableRow(children: [
                  TableCell(
                      child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/logo.png",
                        ),
                        height: 60,
                      ),
                      Column(
                        children: [
                          Text(
                            "	বেফাকুল মাদারিসিল আরাবিয়া বাংলাদেশ",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text("বাংলাদেশ কওমী মাদরাসা শিক্ষা বোর্ড"),
                          Text(
                              "হোল্ডিং-২০৫,কাজলা ভাঙ্গাপ্রেস,যাত্রাবাড়ী, ঢাকা-১২৩৬"),
                          Text("পরীক্ষা নিয়ন্ত্রণ বিভাগ"),
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
                      "মারহালা - ইবতিদাইয়্যাহ",
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
                  TableCell(child: customtext(customt: "রোল নং - ১৩৮৭৫")),
                  TableCell(child: customtext(customt: "রেজি. নং - ৯৮৯৬"))
                ]),
                TableRow(children: [
                  TableCell(child: customtext(customt: result!['name'])),
                  TableCell(
                      child: customtext(customt: "জন্ম তারিখ - ১৩-১০-২০০৩"))
                ]),
              ],
            ),
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  TableCell(
                      child: customtext(customt: "পিতা - মরহুম শাহ জাহান"))
                ]),
                TableRow(children: [
                  TableCell(
                      child: customtext(
                          customt:
                              "মাদরাসা - জামিআ কাসেমুল উলূম মাদানিয়া, কাশীপুর, ফতুল্লা, নারায়ণগঞ্জ, ১/৩৮১"))
                ]),
                TableRow(children: [
                  TableCell(
                      child: customtext(
                          customt:
                              "মারকায - জামিআ কাসেমুল উলূম মাদানিয়া, কাশীপুর, ফতুল্লা, নারায়ণগঞ্জ, ১/৩৮১"))
                ])
              ],
            ),
            Table(
              border: TableBorder.all(),
              children: const [
                TableRow(children: [
                  TableCell(
                    child: customtext(customt: "ক্রমিক নং"),
                  ),
                  TableCell(
                    child: customtext(customt: "বিষয়"),
                  ),
                  TableCell(
                    child: customtext(customt: "প্রাপ্ত নম্বর"),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: customtext(customt: "১"),
                  ),
                  TableCell(
                    child: customtext(customt: "নাজিরা"),
                  ),
                  TableCell(
                    child: customtext(customt: "৮৯"),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: customtext(customt: "২"),
                  ),
                  TableCell(
                    child: customtext(customt: "উর্দুকী তেছরী"),
                  ),
                  TableCell(
                    child: customtext(customt: "৮৯"),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: customtext(customt: "৩"),
                  ),
                  TableCell(
                    child: customtext(customt: "বাংলা-৫ম"),
                  ),
                  TableCell(
                    child: customtext(customt: "৮৯"),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: customtext(customt: "৪"),
                  ),
                  TableCell(
                    child: customtext(customt: "অংক"),
                  ),
                  TableCell(
                    child: customtext(customt: "৮৯"),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: customtext(customt: "৫"),
                  ),
                  TableCell(
                    child: customtext(customt: "তালিমুল ইসলাম ৪র্থ"),
                  ),
                  TableCell(
                    child: customtext(customt: "৮৯"),
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
              children: const [
                TableRow(children: [
                  TableCell(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: customtext(customt: "মোট প্রাপ্ত নম্বর"))),
                  TableCell(child: customtext(customt: "৩৮৩")),
                ]),
                TableRow(children: [
                  TableCell(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: customtext(customt: "প্রাপ্ত বিভাগ"))),
                  TableCell(child: customtext(customt: "জা.")),
                ]),
                TableRow(children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: TableCell(child: customtext(customt: "মেধা স্থান")),
                  ),
                  Expanded(
                      flex: 1,
                      child: TableCell(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: customtext(customt: "০ ()"),
                      )))
                ]),
              ],
            )
          ],
        ),
      ),
    );
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
      child: Text(customt),
    );
  }
}
