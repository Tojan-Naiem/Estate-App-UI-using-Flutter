import 'package:flutter/material.dart';

class SelectGategory extends StatefulWidget {
  const SelectGategory({super.key});

  @override
  State<SelectGategory> createState() => _SelectGategoryState();
}

class _SelectGategoryState extends State<SelectGategory> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
      _buildBox('House'),
      _buildBox('Villa'),
      _buildBox('Apartment'),
      ],
    );
  }
  Widget _buildBox(String name){
  return Container(
    width: 80,
    height: 80,
    margin: EdgeInsets.only( left: 18,right:18),

    decoration: BoxDecoration(
      color: Colors.white,
      border:Border.all(color: const Color.fromARGB(255, 156, 153, 153),width: 0.1)
    ),
    child:InkWell(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
     if(name=='House') Icon(Icons.home,size: 30,color: Colors.blue,),
     if(name=='Villa')Icon(Icons.villa,size:30,color: Colors.blue,),
     if(name=='Apartment')Icon(Icons.apartment,size: 30,color: Colors.blue,),
      Text(name),
    ],) ,
    )
   

  );

  }
}