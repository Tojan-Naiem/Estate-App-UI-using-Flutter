import 'package:estate_app/models/item.dart';
import 'package:estate_app/widgets/search_box.dart';
import 'package:estate_app/widgets/selectCategory.dart';
import 'package:estate_app/widgets/suggesionList.dart';
import 'package:estate_app/widgets/suggestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex=0; 

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      debugShowCheckedModeBanner: false, //To delete the Red Debug
      home: Scaffold(

  //The appBar that shown the Location and the notification
        appBar:AppBar(

          backgroundColor: Colors.white,

          title:const Row(
            children: [
            Icon(Icons.location_on,color: Colors.blue,),
            Text(' Amman , Jordan',style: TextStyle(fontWeight: FontWeight.bold),),
          ]),
          actions: [IconButton(onPressed: (){}, icon:const Icon(Icons.notifications))],
        ),

        // Creat the Bottom Navigation Bar 

        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex){
            setState(() {
              _currentIndex=newIndex;
            });

          },
          elevation: 0.0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items:const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: 'Profile'),
          ]
          ),


        // The Background Color

        backgroundColor: Colors.white, 
        
        //Start to add the Widget into Screen
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(5),
          child:Column(
          children: [
           const  SizedBox(height: 10,),
            
           const SearchBox(),
           const SizedBox(height: 10,),
           const  SelectGategory(),
           const SizedBox(height: 20,),
            Suggestion('Recommendation for you'),
            SuggestionList(Item.recomendation),
           const SizedBox(height: 10,),
            Suggestion('Nearby for you'),
            SuggestionList(Item.nearby),

           
          ],
        ),
          ),

        )
      )
    );
  }
}