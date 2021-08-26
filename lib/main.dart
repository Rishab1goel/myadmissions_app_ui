import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'My Admissions',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
     body: Column(

       children: <Widget>[
       SizedBox(height: 15,),
       Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height*0.13,
           decoration: BoxDecoration(
               color: Colors.blue[800],
               borderRadius: BorderRadius.all(Radius.circular(25))
           ),
           child: Row(
             children: <Widget>[
               IconButton(
                   iconSize: 55.0,
                color:Colors.white,
               icon: Icon(Icons.chevron_left),
               onPressed: (){}),
               Padding(
                 padding:  EdgeInsets.only(left:45.0),
                 child: Text("My Admissions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
               ),
             ],
           ),
         ),
       SizedBox(height: 10,),
       Container(
           width:390,
           height: MediaQuery.of(context).size.height*0.18,
           decoration: BoxDecoration(
               color: Colors.cyan[600],
               borderRadius: BorderRadius.all(Radius.circular(15)),
             boxShadow: [
               BoxShadow(
                 color: Colors.grey,
                 blurRadius: 2.0,
                 spreadRadius: 0.0,
                 offset: Offset(0.0, 2.0), // shadow direction: bottom right
               )
             ],
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

                 children: [
                   Padding(
                     padding:  EdgeInsets.only(top:20.0,right: 50.0),
                     child: Text("ONLINE TUTORING ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(top:0.0,right: 140.0),
                     child: Text(" SESSIONS",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(bottom:0.0,right: 70.0),
                     child: Text("Learning at the comfort ",style: TextStyle(fontSize: 15,color: Colors.white),),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(bottom:10.0,right: 140.0),
                     child: Text("of your home",style: TextStyle(fontSize: 15,color: Colors.white),),
                   ),
                 ],
               ),
               CircleAvatar(
                 radius: 70,
                 backgroundColor: Colors.white,
                 child: CircleAvatar(
                   radius: 57.0,
                   backgroundImage:
                   NetworkImage("https://previews.123rf.com/images/antonioguillem/antonioguillem1709/antonioguillem170900057/85272189-happy-student-girl-studying-taking-notes-sitting-in-a-coffee-shop.jpg"),
                   backgroundColor: Colors.transparent,
                 ),
               )

             ],
           ),
         ),
       SizedBox(height: 10,),
       Container(

           width:390,
           height: MediaQuery.of(context).size.height*0.16,
           decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.all(Radius.circular(15)),
             boxShadow: [
               BoxShadow(
                 color: Colors.grey,
                 blurRadius: 1.0,
                 spreadRadius: 0.0,
                 offset: Offset(0.0, 2.0), // shadow direction: bottom right
               )
             ],
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.only(top: 10.0,left: 18.0),
                 child: Text("My admissions",style: TextStyle(fontSize: 25,color: Colors.blue[800],fontWeight: FontWeight.bold),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:5,left: 18.0),
                 child: Text("Lorem ipsum color sit amet,consectetuer elit seddiam nonummy nibh euismod"),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:5,left: 18.0),
                 child: Text("Lorem ipsum color sit amet consectetuer"),
               ),
             ],
           ),
         ),
       SizedBox(height: 10,),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 10.0),
             child: Stack(
               children: [
                 Container(
                 height: 50,
                 width: MediaQuery.of(context).size.width*0.45,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 1.0,
                       spreadRadius: 0.0,
                       offset: Offset(0.0, 2.0), // shadow direction: bottom right
                     )
                   ],
                 ),
                 child: Center(child: Text("College Predictor",style: TextStyle(fontSize: 19,color:Colors.blue[800],fontWeight: FontWeight.w600),)),
               ),
                 Transform.rotate(
                   angle: 22*pi / 12.0,
                   child: Text(
                     "coming soon",
                     textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.red, fontSize: 8),
                   ),
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 15.0),
             child: Stack(
               children: [
                 Container(
                 height: 50,
                 width: MediaQuery.of(context).size.width*0.45,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 1.0,
                       spreadRadius: 0.0,
                       offset: Offset(0.0, 2.0), // shadow direction: bottom right
                     )
                   ],
                 ),
                 child: Center(child: Text("Degree Selector",style: TextStyle(fontSize: 19,color:Colors.blue[800],fontWeight: FontWeight.w600),)),

               ),
                 Transform.rotate(
                   angle: 22*pi / 12.0,
                   child: Text(
                     "coming soon",
                     textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.red, fontSize: 8),
                   ),
                 ),
              ],
             ),
           ),
         ],
       ),
       SizedBox(height: 10,),
       Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 10.0),
               child: Stack(
                 children: [Container(
                   height: 50,
                   width: MediaQuery.of(context).size.width*0.45,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey,
                         blurRadius: 2.0,
                         spreadRadius: 0.0,
                         offset: Offset(0.0, 2.0), // shadow direction: bottom right
                       )
                     ],
                   ),
                   child: Center(child: Text("My Coaching",style: TextStyle(fontSize: 19,color:Colors.blue[800],fontWeight: FontWeight.w600))),
                 ),
                   Transform.rotate(
                     angle: 22*pi / 12.0,
                     child: Text(
                       "coming soon",
                       textAlign: TextAlign.center,
                       style: TextStyle(color: Colors.red, fontSize: 8),
                     ),
                   ),
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 15.0),
               child: Stack(
                 children:[ Container(
                   height: 50,
                   width: MediaQuery.of(context).size.width*0.45,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey,
                         blurRadius: 2.0,
                         spreadRadius: 0.0,
                         offset: Offset(0.0, 2.0), // shadow direction: bottom right
                       )
                     ],
                   ),
                   child: Center(child: Text("Overseas Admission",style: TextStyle(fontSize: 19,color:Colors.blue[800],fontWeight: FontWeight.w600),)),

                 ),
                   Transform.rotate(
                     angle: 22*pi / 12.0,
                     child: Text(
                       "coming soon",
                       textAlign: TextAlign.center,
                       style: TextStyle(color: Colors.red, fontSize: 8),
                     ),
                   ),
                ],
               ),
             ),
           ],
         ),
       SizedBox(height: 10,),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 15.0),
             child: Text("Blogs for you",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold),),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Text("View more",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold),),
           ),
         ],
       ),
       SizedBox(height: 5,),
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 100,
                 width: 150,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 2.0,
                       spreadRadius: 0.0,
                       offset: Offset(0.0, 2.0), // shadow direction: bottom right
                     )
                   ],
                 ),
                 child: Column(
                   children: [
                     Image.network("https://us.123rf.com/450wm/bnenin/bnenin1708/bnenin170800457/85308103-happy-young-businessman-using-laptop-at-his-office-desk-.jpg?ver=6",
                       height: 80,
                       width: 500,),
                     Text("Lorem ipsum dolar sit"),
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 100,
                 width: 150,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 2.0,
                       spreadRadius: 0.0,
                       offset: Offset(0.0, 2.0), // shadow direction: bottom right
                     )
                   ],
                 ),
                 child: Column(
                   children: [
                     Image.network("https://image.shutterstock.com/image-photo/pretty-talented-female-painter-painting-260nw-699585865.jpg",
                       height: 80,
                       width: 150,),
                     Text("Lorem ipsum dolor sit"),
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 100,
                 width: 150,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 2.0,
                       spreadRadius: 0.0,
                       offset: Offset(0.0, 2.0), // shadow direction: bottom right
                     )
                   ],
                 ),
                 child: Column(

                   children: [
                     Image.network("https://livewiredigital.com/wp-content/uploads/2014/11/business-meeting-3-.shock_.jpg",
                       height: 80,
                       width: 150,
                       ),
                     Text("Lorem ipsum dolar sit"),
                   ],
                 ),
               ),
             ),

           ],
         ),
       ),
       BottomNavigationBar(
      currentIndex: index,
      onTap: (int index) { setState((){ this.index = index; }); },
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.blueAccent,
      items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(

      icon:  Icon(Icons.home),
      title:  Text("Home"),
      ),
      BottomNavigationBarItem(
        icon:  Icon(Icons.explore),
        title:  Text("Explore"),
      ),
      BottomNavigationBarItem(
        icon:  Icon(Icons.school),
        title:  Text("Admissions"),
      ),
      BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title:  Text("FAQ's"),
      ),
        ],
       ),
      ],
     ),
    );
  }
}
