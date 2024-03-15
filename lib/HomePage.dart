

import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  State<HomePage> createState()=> _HomePageState();
}


class _HomePageState extends State<HomePage>{

   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.teal,
         title: Text("Fitted Box Example"),
         centerTitle: true,
       ),


       body: SafeArea(
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   height: 100,
                   width: 300,
                   decoration:  BoxDecoration(
                     color: Colors.white,
                     border: Border.all(color: Colors.orange),
                     borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.redAccent.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 10,
                         offset: Offset(0,3)
                       )
                     ]


                   ),

                   child: FittedBox(
                     child: Center
                       (
                       child: Text("This is Fitted Box ",style: TextStyle(fontSize: 40),),
                     ),
                   ),


                 ),
                 SizedBox(height: 10),
                 
                 
                 
                 Container(
                   height: 100,
                   width: 200,
                   decoration:  BoxDecoration(
                       color: Colors.white,
                       border: Border.all(color: Colors.orange),
                       borderRadius: BorderRadius.circular(20),
                       boxShadow: [
                         BoxShadow(
                             color: Colors.redAccent.withOpacity(0.5),
                             spreadRadius: 2,
                             blurRadius: 10,
                             offset: Offset(0,3)
                         )
                       ]


                   ),
                   child:FittedBox(
                       child:Image.asset("assets/images/im1.jpg"))
                 ),


                 
               ],
             ),
           ),
         ),
       ),
     );

   }
}