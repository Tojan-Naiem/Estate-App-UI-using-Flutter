import 'package:estate_app/home_page.dart';
import 'package:estate_app/models/item.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage(this.item,{super.key});
  final Item item;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
   IconData iconF=Icons.favorite_outline;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:  Scaffold(
      appBar: AppBar(
   
        //The Icon Button and the Title

        title:Row(
        children: [ 
          
          IconButton(onPressed: (){
           Navigator.pop(
           context,
                        MaterialPageRoute(builder: (context) => const MyHomePage()),
                        
                    );
          },
           icon: Icon(Icons.arrow_back,color: Colors.blue,),),
          const SizedBox(width: 30,),
          Text(
        widget.item.title!,
        style:const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

        ],),),
        body: Container(
          margin: EdgeInsets.all(20),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //The container to save the image
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(widget.item.image!),
                    fit: BoxFit.cover,

                  )

                ),
              ),

                const SizedBox( height: 15,),

                //To write the Category

                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text( '  ' + widget.item.category!,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )),

                const SizedBox(
                  height:9,
                ),
                
                //The title

                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '  ' + widget.item.title!,
                      style:const  TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),

                     const SizedBox(height: 9, ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: 
                    Row(children: [ 
                      const SizedBox(width: 8,),
                      Icon(Icons.location_on,size: 15,color: Color.fromARGB(255, 155, 151, 151),),
                      Text( widget.item.location!,
                      style:const  TextStyle(
                          color: Color.fromARGB(255, 155, 151, 151),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
              ]),
              
              
                    ),
                    const SizedBox(height: 23,),
                    Align(
                    alignment: Alignment.bottomLeft,
                    child:Row(
                      children: [
                        Text(
                      '  ' + widget.item.price!+'\$ / Month',
                      style:const  TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    
                    const SizedBox(width: 130,),
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
                    
                    ]),
                   ),


                   const SizedBox(height: 130,),
                   Container(
                    width: 400,
                    height: 60,
                    
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 5, 134, 240),
                  
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton( 
                      onPressed: (){},
                      child: Text(
                        'Rent Now',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                      ),
                    )

                   ),





            ]
          )
        )
          )
    

    );
  }
}