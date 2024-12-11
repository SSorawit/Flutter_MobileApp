import 'package:flutter/material.dart';
import 'package:hw1/Myfav.dart';

class Myfav extends StatelessWidget{
  const Myfav({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      //4----------------------------------------------------
      child: Column(
        children: [
          const Text("My favorite Series",
          style: TextStyle(fontSize: 50,fontFamily: "Tahoma",fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3, // กำหนดอัตราส่วน 2:3 (เหมือนกับรูปแนวตั้ง)
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0), // เพิ่มมุมโค้ง
                      child: Image.asset(
                        "assets/images/f1fcc28c116183147150baccdf80b6c1.jpg", // แก้ไขชื่อไฟล์เป็นไฟล์รูปแรก
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/6e1a3156dd53f8854e2d8042a0c27d71.jpg", // รูปที่สอง
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/cb610365ad8830243ce88b1f98b63d20.jpg", // รูปที่สาม
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(children: [
            const Text("My favorite Movie",
          style: TextStyle(fontSize: 50,fontFamily: "Tahoma",fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3, // กำหนดอัตราส่วน 2:3 (เหมือนกับรูปแนวตั้ง)
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0), // เพิ่มมุมโค้ง
                      child: Image.asset(
                        "assets/images/godzilla.jpg", // แก้ไขชื่อไฟล์เป็นไฟล์รูปแรก
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/Even If This Love Disappears Tonight.jpg", // รูปที่สอง
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/TheEqualizer3.jpg", // รูปที่สาม
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(children: [
            const Text("My favorite Song",
          style: TextStyle(fontSize: 50,fontFamily: "Tahoma",fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3, // กำหนดอัตราส่วน 2:3 (เหมือนกับรูปแนวตั้ง)
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0), // เพิ่มมุมโค้ง
                      child: Image.asset(
                        "assets/images/hurt.jpg", // แก้ไขชื่อไฟล์เป็นไฟล์รูปแรก
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/Rose.jpg", // รูปที่สอง
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/whiplash.jpg", // รูปที่สาม
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),  
          ],)  
          ],) 
        ],
      ),
      //4----------------------------------------------------
    );
  }
}