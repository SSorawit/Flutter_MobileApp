import 'package:flutter/material.dart';
import 'package:hw1/Aboutme.dart';
import 'package:hw1/Mycat.dart';
import 'package:hw1/Myfav.dart';
import 'package:hw1/Myschool.dart';
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
      home: DefaultTabController(length: 5, child: Scaffold(
        appBar: AppBar(
          title: const Text("History of Sorawit"),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home),text: "หน้าแรก",),
            Tab(icon: Icon(Icons.insert_photo_rounded),text: "My Fav",),
            Tab(icon: Icon(Icons.insert_photo_rounded),text: "My Cat"),
            Tab(icon: Icon(Icons.school),text: "ประวัติการศึกษา"),
            Tab(icon: Icon(Icons.account_circle_rounded),text: "About me")
          ]),
        ),
        //3-------------------------------------------------------
        body: TabBarView(children: [
          Myhome(),
          Myfav(),
          Mycat(),
          Myschool(),
          Aboutme()
        ]),
        //3-------------------------------------------------------
      )),
    );

    //2----------------------------------------------------------
  }
}
//1---------------------------------------------------------