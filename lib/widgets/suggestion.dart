
import 'package:flutter/material.dart';

class Suggestion extends StatefulWidget {
    Suggestion(this.title,{super.key});
  final String title;

  @override
  State<Suggestion> createState() => _SuggestionState();
}

class _SuggestionState extends State<Suggestion> {

  
  @override
  Widget build(BuildContext context) {
    return Container(

    
     child : Column(children: [  
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                  Text(widget.title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 TextButton(onPressed: (){
                
                }, 
                child:const Text('see all',style: TextStyle(color: Colors.blue,fontSize: 15),)
                
                  ),
              //  const SizedBox(width: 90,),
                
                
                
              ],),
              const SizedBox(height: 15,),
            
            

     ]
     ,)
    );
  }
}