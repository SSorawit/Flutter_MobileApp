import 'package:flutter/material.dart';
import 'package:hw1/myhome.dart';

void main() {
  runApp(const MyApp());
}

//1----------------------------------------------------------
  class MyApp extends StatelessWidget{
    const MyApp({super.key});

    //2----------------------------------------------------------
    @override
    Widget build(BuildContext context){
    //TODO implement build
    return MaterialApp(
      home: DefaultTabController(length: 3, child: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home),text: "หน้าแรก",),
            Tab(icon: Icon(Icons.school),text: "เกี่ยวกับภาควิชา",),
            Tab(icon: Icon(Icons.man),text: "บุคลากร")
          ]),
        ),
        //3-------------------------------------------------------
        body: TabBarView(children: [
          Myhome(),
          Icon(Icons.school),
          Icon(Icons.man)
        ]),
        //3-------------------------------------------------------
      )),
    );

    //2----------------------------------------------------------
  }
}
//1---------------------------------------------------------