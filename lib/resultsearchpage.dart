import 'package:flutter/material.dart';
import 'package:tanjibbord/homepage.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

final TextEditingController controller = TextEditingController();

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _allUsers = [
      {
        "roll": 101,
        "name": "Dr. Manu Kumar",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 102,
        "name": "sofik",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 103,
        "name": "salam",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 104,
        "name": "jabbar",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 105,
        "name": "borkat",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 106,
        "name": "kobir",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 107,
        "name": "sakhayat",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 108,
        "name": "samsul",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 109,
        "name": "kobir",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
      {
        "roll": 110,
        "name": "koddos",
        "english": 65,
        "math": 50,
        "bangla": 40,
      },
    ];

    Map<String, dynamic>? runFilter(String enteredKeyword) {
      if (enteredKeyword.isEmpty) {
        return null;
      } else {
        Map<String, dynamic>? result = _allUsers.firstWhere(
            (element) => element["roll"] == int.parse(enteredKeyword));

        print(result);

        return result;
      }
    }

    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          ElevatedButton(
              onPressed: () {
                Map<String, dynamic>? mainresult = runFilter(controller.text);

                if (mainresult != null) {
                  print(mainresult);
                }

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                        result: mainresult,
                      ),
                    ));
              },
              child: const Text("Search"))
        ],
      ),
    );
  }
}
