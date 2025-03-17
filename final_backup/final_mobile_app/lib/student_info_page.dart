import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StudentInfoPage extends StatefulWidget {
  @override
  _StudentInfoPageState createState() => _StudentInfoPageState();
}

class _StudentInfoPageState extends State<StudentInfoPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  String responseMessage = "";

  Future<void> saveStudent() async {
    String name = nameController.text;
    String phone = phoneController.text;

    if (name.isNotEmpty && phone.isNotEmpty) {
      try {
        var url = Uri.parse("http://localhost/student_api/student_api.php");
        var response = await http.post(url, body: {
          "name": name,
          "phone": phone,
        });

        setState(() {
          responseMessage = response.body;
        });

        nameController.clear();
        phoneController.clear();
      } catch (e) {
        setState(() {
          responseMessage = "เกิดข้อผิดพลาด: $e";
        });
      }
    } else {
      setState(() {
        responseMessage = "กรุณากรอกข้อมูลให้ครบถ้วน!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'ชื่อ-นามสกุล'),
          ),
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(labelText: 'เบอร์โทร'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: saveStudent,
            child: Text('บันทึกข้อมูล'),
          ),
          SizedBox(height: 20),
          Text(responseMessage, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
