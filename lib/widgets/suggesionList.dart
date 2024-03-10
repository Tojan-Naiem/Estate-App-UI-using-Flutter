import 'package:estate_app/widgets/itemCard.dart';
import 'package:estate_app/models/item.dart';
import 'package:flutter/material.dart';

class SuggestionList extends StatefulWidget {
  SuggestionList(this.item, {super.key});

  final List<Item> item;


  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  int count = 0;
  IconData iconF=Icons.favorite_outline;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: double.infinity,
       
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (int i = 0; i < widget.item.length; i++) ItemCard(widget.item[i]),
          ],
        ), 
       

        );
  }

 
  
}
