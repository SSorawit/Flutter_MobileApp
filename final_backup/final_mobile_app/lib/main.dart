import 'package:flutter/material.dart';
import 'odd_numbers_page.dart';
import 'money_change_page.dart';
import 'student_info_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tab Menu Project'),
          bottom: TabBar(
            tabs: [
              Tab(text: "เลขคี่"),
              Tab(text: "ทอนเงิน"),
              Tab(text: "ข้อมูลนักเรียน"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OddNumbersPage(),
            MoneyChangePage(),
            StudentInfoPage(),
          ],
        ),
      ),
    );
  }
}
