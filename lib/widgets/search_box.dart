import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(95, 217, 213, 213),
        borderRadius: BorderRadius.circular(20),
      ),
      child:const TextField(
        
        decoration: InputDecoration(
          border: InputBorder.none,
      
          hintText: 'Search...',
          prefixIcon:Icon(Icons.search,),
          suffixIcon: Icon(Icons.filter_alt_outlined)
          
        ),
      ),
    );
  }
}