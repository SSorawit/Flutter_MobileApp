import 'package:flutter/material.dart';

class MoneyChangePage extends StatefulWidget {
  @override
  _MoneyChangePageState createState() => _MoneyChangePageState();
}

class _MoneyChangePageState extends State<MoneyChangePage> {
  final TextEditingController priceController = TextEditingController();
  final TextEditingController cashController = TextEditingController();
  String changeDetails = "";

  void calculateChange() {
    int price = int.tryParse(priceController.text) ?? 0;
    int cash = int.tryParse(cashController.text) ?? 0;
    int result = cash - price;

    if (result < 0) {
      setState(() {
        changeDetails = "เงินไม่พอ!";
      });
      return;
    }

    List<int> banknotes = [1000, 500, 100, 20];
    List<int> coins = [10, 5, 2, 1];
    Map<int, int> changeBreakdown = {};

    for (int note in banknotes) {
      if (result >= note) {
        changeBreakdown[note] = result ~/ note;
        result %= note;
      }
    }

    for (int coin in coins) {
      if (result >= coin) {
        changeBreakdown[coin] = result ~/ coin;
        result %= coin;
      }
    }

    setState(() {
      changeDetails = "ธนบัตร: \n";
      changeBreakdown.forEach((key, value) {
        if (key >= 20) {
          changeDetails += "  ${key} บาท: $value ใบ\n";
        }
      });
      changeDetails += "\nเหรียญ: \n";
      changeBreakdown.forEach((key, value) {
        if (key < 20) {
          changeDetails += "  ${key} บาท: $value เหรียญ\n";
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: priceController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'ราคาสินค้าทั้งหมด (บาท)'),
          ),
          TextField(
            controller: cashController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'เงินสดที่จ่าย (บาท)'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: calculateChange,
            child: Text('คำนวณทอนเงิน'),
          ),
          SizedBox(height: 20),
          Text(changeDetails, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
