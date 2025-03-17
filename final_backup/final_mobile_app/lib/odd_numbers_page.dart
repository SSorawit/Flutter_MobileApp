import 'package:flutter/material.dart';

class OddNumbersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 500,
      itemBuilder: (context, index) {
        int oddNumber = index * 2 + 1;
        return ListTile(
          title: Text(oddNumber.toString()),
        );
      },
    );
  }
}