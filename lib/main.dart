// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("This is first Screen"),
              ElevatedButton(
                  onPressed: () {
                    Get.to(SecondScreen());
                  },
                  child: Text("Next Screen"))
            ]),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("This is Second Screen"),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: "GetX Basics",
                        middleText:
                            "Do you really want to go to previous screen ?",
                        backgroundColor: Colors.grey[200],
                        titleStyle: TextStyle(color: Colors.blue),
                        middleTextStyle: TextStyle(color: Colors.black),
                        textConfirm: "Yes",
                        textCancel: "No",
                        radius: 10,
                        onConfirm: () {
                          Get.to(FirstScreen());
                        });
                  },
                  child: Text("Go Back"))
            ]),
          ),
        ),
      ),
    );
  }
}
