import 'package:estate_app/details_page.dart';
import 'package:estate_app/models/item.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
   ItemCard(this.item,{super.key});
 final Item item;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  int count = 0;
  IconData iconF=Icons.favorite_outline;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        
        children: [
         
       //To make a space from the edge  
       const SizedBox(width: 10, ),

       //That will hold all the informaion
        Container(
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: const Color.fromARGB(255, 70, 69, 69), width: 0.2)),
            child: InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>
                DetailsPage(widget.item)));
                
                
              },
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),


                Container(
                  width: double.infinity,
                  height: 180,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          widget.item.image!,
                        ),
                        fit: BoxFit.cover,
                      )),
                ),


                 const SizedBox(
                  height: 8,
                ),



                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text( '     ' + widget.item.category!,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),



                const SizedBox(
                  height: 4,
                ),



                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '  ' + widget.item.title!,
                      style:const  TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                     const SizedBox(height: 4, ),


                Align(
                    alignment: Alignment.bottomLeft,
                    child: 
                    Row(children: [ 
                      const SizedBox(width: 8,),
                      Icon(Icons.location_on,size: 15,color:  Color.fromARGB(255, 92, 92, 92),),
                      Text( widget.item.location!,
                      style:const  TextStyle(
                          color: Color.fromARGB(255, 92, 92, 92),
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    )
              ]),
              
              
                    ),


                    const SizedBox(height: 14,),



                    Align(
                    alignment: Alignment.bottomLeft,
                    child:Row(
                      children: [
                        Text(
                      '  ' + widget.item.price!+'\$ / Month',
                      style:const  TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),




                    const SizedBox(width: 90,),
                    IconButton(onPressed: (){
                      setState(() {
                        if(iconF==Icons.favorite_outline)
                        {
                          iconF=Icons.favorite;
                        }
                        else iconF=Icons.favorite_outline;

                      });
                    }, 
                    
                    
                    icon:Icon(iconF),)
                    
                    
                   
                      ]
                      ,) 
                    
                    ),
                    
              ]),
            )),
      ]),
    );
  }
}