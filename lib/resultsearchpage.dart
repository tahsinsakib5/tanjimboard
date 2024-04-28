
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanjibbord/homepage.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {

      final List<Map<String, dynamic>> _allUsers = [
    {
      
      "roll": 101,
      "name": "Dr. Manu Kumar",
      "english":65,
      "math":50,
      "bangla":40,

    },
    {
        "roll": 102,
      "name": "sofik",
      "english":65,
      "math":50,
      "bangla":40,
    },
    {
        "roll": 103,
      "name": "salam",
      "english":65,
      "math":50,
      "bangla":40,
    },
    {
        "roll": 104,
      "name": "jabbar",
      "english":65,
      "math":50,
      "bangla":40,
    },
    {
       "roll": 105,
      "name": "barkat",
      "english":65,
      "math":50,
      "bangla":40,
    },
    {
        "roll": 106,
      "name": "kobir",
      "english":65,
      "math":50,
      "bangla":40,
    },
    {
       "roll": 107,
      "name": "sakhayat",
      "english":65,
      "math":50,
      "bangla":40,
    },
    {
        "roll": 108,
      "name": "samsul",
      "english":65,
      "math":50,
      "bangla":40,
    },
    {
        "roll": 109,
      "name": "kobir",
      "english":65,
      "math":50,
      "bangla":40,
    },
    {  "roll": 110,
      "name": "koddos",
      "english":65,
      "math":50,
      "bangla":40,
    },


    
  ];

  TextEditingController controller =TextEditingController();

 Map <String,dynamic>  _foundUsers;

   void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["id"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results[controller.text as int];
    });
  }

   
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller:controller,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
          ),

          ElevatedButton(onPressed: () {
            _runFilter(controller.text);
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          }, child:Text("search"))
        ],
      ),
    );
  }
}