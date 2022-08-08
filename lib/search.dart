import 'package:flutter/material.dart';
import 'intro.dart';
 class search extends StatefulWidget {
   const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color(0xff4e4e4e),
       body: SafeArea(
         child: Column(
           children: [
             SizedBox(height: 20,),
             const Text("Feature coming soon",style: TextStyle(color: Colors.white,fontSize: 25)),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                 decoration:  InputDecoration(
                   filled: true,
                   fillColor: Colors.white,
                   icon: Icon(
                     Icons.search_rounded,
                     color: Colors.white,
                   ),
                   hintText: "Enter city name",
                   hintStyle: TextStyle(color: Colors.grey),
                   border:  OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     borderSide: BorderSide.none,
                   ),
                 ),
                 onChanged: (value){
                   print(value);
                 },
             ),
              ),
           ],
         ),
       ),
     );
   }
}
